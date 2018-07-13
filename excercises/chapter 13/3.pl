#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;
use Cwd;

print "Please input the new directory:";
chomp(my $dir = <STDIN>);

my $maindir = "F:/HTS_TTS/batch";
if ($dir =~ /\s+/)
{
	
	chdir $maindir  or warn "Cannot chdir to 'F:/HTS_TTS/batch'\n";
	opendir DIR,$maindir;
}
else
{
	opendir DIR,$dir;
	chdir $dir or warn "Cannot chdir to $dir\n";
}



foreach my $file(readdir DIR)
{
	next if $file=~/^\./;
	print "$file\n";
}



close DIR;

