#!usr/bin/perl
# coding=utf-8
use strict;
use warnings;

open IN,"test.txt";
while(<IN>)
{
	chomp;
	if(/(?<outside>(?<inside>\w*a\b).{0,5})/)
	{
		printf "'inside' contains %-10s'outside' contains %-10s\n",$+{inside},$+{outside};
		# print "'outside' contains $+{outside}\n";
	}
	
}
close IN;