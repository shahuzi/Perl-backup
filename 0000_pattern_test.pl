#!/usr/bin/perl
# coding=utf-8

# 下面是一个有用的程序，可用来检测某些字符串是否能被指定的模式匹配
use strict;
use warnings;

my $what = "fred|barney";
while(<>)
{
	chomp;
	if(/($what){3}/)
	{
		print "Matched:<$&>\n";
	}
	else
	{
		print "No match:|$_|\n";
	}
}
