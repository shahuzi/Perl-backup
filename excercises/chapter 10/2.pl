#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;
my $realnum;


my $switch;
my $innum;
$realnum = int(1 + rand 100);
print "Do you need to see the debug information?\n";
chomp($switch = <STDIN>);
if($switch =~ /yes|y/i)
{
	print "Answer is $realnum\n";
}


LOOP:while(1)
{
	print "Please enter a number in range 1-100 :";
	chomp($innum = <STDIN>);
	if ($innum =~ /quit|exit|\s+/)
	{
		last LOOP;
	}
	else
	{
		if ($innum eq $realnum)
		{
			print "Greate!You're rights\n";
			last LOOP;
		}
		elsif ($innum lt $realnum)
		{
			# print "input:  $innum\t real:   $realnum\n";
			print "Too low\n";
			next LOOP;
		}
		elsif ($innum gt $realnum)
		{
			# print "input:  $innum\t real:   $realnum\n";
			print "Too high\n";
			next LOOP;
		}
	}	
}	
