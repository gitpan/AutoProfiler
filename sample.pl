#!/usr/bin/perl -w
use strict;
use Data::Dumper;

use AutoProfiler;


sub wait_1
{
  print "wait_1\n";
  sleep 1;
}


sub wait_2
{
  print "wait_2\n";
  sleep 2;
}

sub wait_3
{
  print "wait_3\n";
  wait_2;
  wait_1;
}

sub wait_4
{
  print "wait_4\n";
  wait_3;
  wait_1;
}

sub call_waits
{
  wait_2;
  wait_3;

  wait_4;

  wait_1;
}


eval {
call_waits;
};

