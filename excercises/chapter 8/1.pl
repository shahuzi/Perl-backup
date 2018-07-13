#!/usr/bin/perl
#coding=utf-8

use strict;
use warnings;

while(<>)
{
	chomp;
	if(/match/)
	{
		print "It matched!\n";
	}
	else
	{
		print "It hadn't matched!\n";
	}
}