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

if (@ARGV != 2) {die "I need a sam file and an index";}
(my $in, my $index)=@ARGV;
if ($in !~ /sam$/) {die "I said a SAM file";}

open (IN, $in) or die 'could not find the input file';
open (OUT1,">", $index."_".$in) or die 'could not open output file';
open (OUT2,">", $index."_index") or die 'could not open output file';

while ($line=<IN>)
 {
  $count1++;
  #print "$count1\n";
  if($line=~/\@SQ/){next;}
  chomp ($line);
  @holder = split(/\t/,$line);
  @readname = split(/;/,$holder[0]);
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
   print OUT1 "$line\n";
   print OUT2 "$readname[2]\n";
  }
 }


close IN;

