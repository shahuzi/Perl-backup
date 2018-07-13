#!usr/bin/perl
# coding=utf-8
use strict;
use warnings;

open IN,"test.txt";
# 法1，事先把换行符去掉
while(<IN>)
{
	chomp;
	if(/\s+$/)
	{
		print "$_ there are some blanks\n";
		# print "'outside' contains $+{outside}\n";
	}
	
}
close IN;