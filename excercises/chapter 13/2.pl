#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

print "Please input the new directory:";
chomp(my $dir = <STDIN>);

if ($dir =~ /\s+/)
{
	chdir "F:/HTS_TTS/batch" or warn "Cannot chdir to 'F:/HTS_TTS/batch'\n";
}
else
{
	chdir $dir or warn "Cannot chdir to $dir\n";
}

my @files = glob ".* *";
# my @files = <*>;
foreach(@files)
{
	# next if /^\./;
	print "$_\n";
}


