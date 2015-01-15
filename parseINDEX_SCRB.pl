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

if (@ARGV != 3) {die "wrong number of files";}
(my $R1,my $R2, my $header)=@ARGV;

open (R1, $R1) or die 'could not find the input file';
open (R2, $R2) or die 'could not find the input file';
open (OUT1,">","index_".$R1) or die 'cannot open output file';
open (OUT2,">","index_".$R2) or die 'cannot open output file';


####
while ($line1=<R1>)
{
  my $line2 = <R2>;
  $count++;
  chomp ($line1);
  chomp ($line2);

  if($line1=~/$header/)
  {
   unless(($tag==42)||($short==1))
   {
    print OUT1 "$readname1\n$readseq1\n+\n$readqual1\n";
    print OUT2 "$readname2\n$readseq2\n+\n$readqual2\n";
   }
   $tag=1;
   $short=0;
   $readname1 = $line1;
   $readname2 = $line2;
   $readname1 =~ s/\s/\;/g;
   $readname2 =~ s/\s/\;/g;
  }
  else
  {
   $tag--;
  }
  if($tag==0)
  {
   if(length $line1 < 100)
   {
    $short=1;
   }
   else
   {
    $index=substr $line1,0,6;   
    $umi=substr $line1,6,8;
    $T=substr $line1,14,30;
    $Tcount=$T=~tr/T//;
    $readseq1=substr $line1,43,50;
    $readseq2=substr $line2,0,50;
    $readname1=$readname1.";".$index.";".$umi.";".$Tcount;
    $readname2=$readname2.";".$index.";".$umi.";".$Tcount;

   
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
  elsif(($tag==-2)&&($short==0))
  {
   $readqual1=substr $line1,43,50;  
   $readqual2=substr $line2,0,50;  
  }
 }

 for my $out (keys %count)
 {
  print "$out\t$count{$out}\t".(keys %{$count1{$out}})."\n";
 }

close R1;
close R2;
close OUT1;
close OUT2;
