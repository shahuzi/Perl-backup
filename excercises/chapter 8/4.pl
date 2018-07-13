#!usr/bin/perl
# coding=utf-8
use strict;
use warnings;

open IN,"test.txt";
while(<IN>)
{
	chomp;
	if(/(?<name>\w*a\b)/)
	{
		print "'name' contains $+{name}\n";
	}
	
}
close IN;