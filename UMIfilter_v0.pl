#!/usr/bin/perl

use strict;
use warnings;

my $line;
my $count=0;
my $countU=0;
my $countD=0;
my $readtag;
my @holder;
my @readname;
my @bound;
my %reads;

if (@ARGV != 1) {die "wrong number of files";}
(my $in)=@ARGV;

open (IN, $in) or die 'could not find the input file';
open (OUT1,'>', 'filtered.'.$in) or die 'could not open output file';
#####
while ($line=<IN>)
 {
  $count++;
  chomp ($line);

  @holder = split (/\s/, $line);
  @readname = split (/;/, $holder[1]);
  $readtag = $readname[3].$holder[5];
  @bound = sort { $a <=> $b } @holder[6,7];
  unless (exists $reads{$readtag}{ISO})
  {
   $reads{$readtag}{ISO}++;
  }
  #print "$readtag\n";
##
  unless (exists $reads{$readtag}{$reads{$readtag}{ISO}})
  {
   $countU++;
   print OUT1 "$line\n";
   $reads{$readtag}{$reads{$readtag}{ISO}}{COUNT}++;
   $reads{$readtag}{$reads{$readtag}{ISO}}{UP}=$bound[0];
   $reads{$readtag}{$reads{$readtag}{ISO}}{DWN}=$bound[1];
  }
  else
  {
   if(($bound[0] <= $reads{$readtag}{$reads{$readtag}{ISO}}{UP})&&($bound[1] >= $reads{$readtag}{$reads{$readtag}{ISO}}{UP}))
   {
    $reads{$readtag}{$reads{$readtag}{ISO}}{COUNT}++;
    $reads{$readtag}{$reads{$readtag}{ISO}}{UP}=$bound[0];
   }
   if(($bound[0] < $reads{$readtag}{$reads{$readtag}{ISO}}{DWN})&&($bound[1] >= $reads{$readtag}{$reads{$readtag}{ISO}}{DWN}))
   {
    $reads{$readtag}{$reads{$readtag}{ISO}}{COUNT}++;
    $reads{$readtag}{$reads{$readtag}{ISO}}{DWN}=$bound[1];
   }  
   else
   {
    $reads{$readtag}{ISO}++;
    $countU++;
    print OUT1 "$line\n";
    $reads{$readtag}{$reads{$readtag}{ISO}}{COUNT}++;
    $reads{$readtag}{$reads{$readtag}{ISO}}{UP}=$bound[0];
    $reads{$readtag}{$reads{$readtag}{ISO}}{DWN}=$bound[1];
   }
  }
##
  print "$count\t$countU\n";
 }
#####
#foreach my $out (keys %reads)
#{
# print "$reads{$out}{1}{COUNT}\n";
#}
close IN;

