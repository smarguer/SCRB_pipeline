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
my $pos;
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
  $pos= substr($holder[6], 0, -4);
  $readtag = $readname[3].$holder[5].$pos;
  #@bound = sort { $a <=> $b } @holder[6,7];
  #unless (exists $reads{$readtag}{ISO})
  #{
  # $reads{$readtag}{ISO}++;
  #}
  #print "$readtag\n";
##
  unless (exists $reads{$readtag})
  {
   $countU++;
   print OUT1 "$line\n";
   $reads{$readtag}{COUNT}++;
  # $reads{$readtag}{$reads{$readtag}{ISO}}{UP}=$bound[0];
  # $reads{$readtag}{$reads{$readtag}{ISO}}{DWN}=$bound[1];
  }
  else
  {
    $reads{$readtag}{COUNT}++;
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

