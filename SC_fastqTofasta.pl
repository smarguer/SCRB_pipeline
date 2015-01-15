#!/usr/bin/perl

use strict;
use warnings;

my $line;
my $count=0;
my @holder;
my %status;
my $n=1;

if (@ARGV != 2) {die "wrong number of files";}
(my $in, my $output)=@ARGV;

unless ($output=~/fasta|fastq/){die 'please specify either fasta or fastq format';}

my @indexes=("ATCACG","CGATGT","TTAGGC","TGACCA","ACAGTG","GCCAAT","CAGATC","ACTTGA","GATCAG","TAGCTT","GGCTAC","CTTGTA");

foreach (@indexes)
 {
  $count++;
  $status{$n}=system "perl ~/DATA/SC_2014/extractINDEX_SCRB.pl ".$in." ".$_." M01823 "."$output";
  die "Problem stage $n" if $status{$n}; $n++;
 }



