#!/usr/bin/perl

use strict;
use warnings;
my $loop=0;
my $line;
my $line1;
my $line2;
my $count=0;
my @holder;
my $tag=42;
my $index;
my $umi;
my %count;
my %count1;
my $T;
my $readname1;
my $readname2;
my $readseq1;
my $readseq2;
my $readqual1;
my $readqual2;
my $short=0;
my $Tcount;

if (@ARGV != 1) {die "wrong number of files";}
(my $R1)=@ARGV;

open (R1, $R1) or die 'could not find the input file';

####
while ($line1=<R1>)
{
 chomp ($line1);

 if($line1=~/M01823/)
 {
  $tag=1;
 }
 else
 {
  $tag--;
 }
 if($tag==0)
 {
  $index=substr $line1,0,6;   
  $umi=substr $line1,6,8;
  $T=substr $line1,14,30;
  $Tcount=$T=~tr/T//;
  
  if(defined $count1{$index})
  {
   $count{$index}++;
  }
  else
  {
   $count{$index}=1;
  }
  if(defined $count1{$index}{$umi})
  {
   $count1{$index}{$umi}++;
  }
  else
  {
   $count1{$index}{$umi}=1;
  }
 }   
}

for my $out (keys %count)
{
 print "$out\t$count{$out}\t".(keys %{$count1{$out}})."\n";
}

close R1;
