#!/usr/bin/perl

use strict;
use warnings;

my $line;
my $count = 0;
my $count1 = 0;
my @holder;
my @readname;
my @index_char = [];
my @input_char = [];
my $i;
my %indexes=(
"ATCACG"=>"I1",
"CGATGT"=>"I2",
"TTAGGC"=>"I3",
"TGACCA"=>"I4",
"ACAGTG"=>"I5",
"GCCAAT"=>"I6",
"CAGATC"=>"I7",
"ACTTGA"=>"I8",
"GATCAG"=>"I9",
"TAGCTT"=>"I10",
"GGCTAC"=>"I11",
"CTTGTA"=>"I12");

if (@ARGV != 3) {die "I need a fastq file, an index, and a tag";}
(my $in, my $index, my $tag)=@ARGV;

open (IN, "index_".$in.".fastq") or die 'could not find the input file';
open (OUT1,">", $in."_".$indexes{$index}.".fasta") or die 'could not open output file 1';
open (OUT2,">", $indexes{$index}."_".$in.".index") or die 'could not open output file 2';

while ($line=<IN>)
 {
  $count1++;
  #print "$count1\n";
  if($line=~/$tag/)
  {
   chomp ($line);
   @readname = split(/;/,$line);
##$readname[2] = index
##$readname[3] = umi
##$index = "TTAGGC";
   @index_char=split(//,$index);
   @input_char=split(//,$readname[2]);
   $i=-1;
   $count=0;
   for my $base (@input_char)
   {
    $i++;
    if ($base eq $index_char[$i])
    {
     $count++;
    }
   }
   if($count > 4)
   {
    print OUT1 ">$line\n";
    print OUT2 "$readname[2]\n";
    $count1=0;
   }
  }
  elsif ($count1==1)
  {
   print OUT1 $line;
  }
 }

close IN;
close OUT1;
close OUT2;
