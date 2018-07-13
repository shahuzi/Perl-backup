#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

# 若想从目录里获得文件名列表，还可以使用目录句柄
# 目录句柄以opendir打开路径，
# 以readdir读取内容，以closedir关闭
# 读取的内容是目录里的文件名

my $dir = "excercises";
opendir DH, $dir or die "Cannot open $dir:$!\n";
foreach my $file(readdir DH)
{
	print "one file in $dir is $file\n";
}

closedir DH;

my $HTS_DIR = "F:/HTS_TTS/batch";
opendir HTS,$HTS_DIR or die "Cannot open $HTS_DIR:$!\n";
foreach my $file (readdir HTS)
{
	next if $file =~ /^\./;
	# $file = "$HTS_DIR/$file";  # 拼合为完整路径
	print "$file\n";
}

closedir HTS;