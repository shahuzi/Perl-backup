#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;
my $realnum;
print "Please enter a number in range 1-100 :";

my $innum;
$realnum = int(1 + rand 100);
while(1)
{
	chomp($innum = <STDIN>);
	if ($innum =~ /quit|exit|\s+/)
	{
		last;
	}
	else
	{
		if ($innum eq $realnum)
		{
			print "Greate!You're rights\n";
			last;
		}
		elsif ($innum lt $realnum)
		{
			# print "input:  $innum\t real:   $realnum\n";
			print "Too low\n";
			next;
		}
		elsif ($innum gt $realnum)
		{
			# print "input:  $innum\t real:   $realnum\n";
			print "Too high\n";
			next;
		}
	}	
}	
