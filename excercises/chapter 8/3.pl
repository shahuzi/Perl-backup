#!usr/bin/perl
# coding=utf-8
use strict;
use warnings;

open IN,"test.txt";
while(<IN>)
{
	chomp;
	if(/(\w*a\b)/)
	{
		print "'\$1' contains $1\n";
	}
	
}
close IN;