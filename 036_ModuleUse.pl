#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

# File::Basename模块
use File::Basename;

my $name = "/usr/local/bin/perl";
my $basename = basename $name; # 返回perl
my $dirname = dirname $name;
print "basename is :$basename\n";   # perl
print "dirname is :$dirname\n";     # /usr/local/bin

# 查看文档说明 perldoc File::Basename


# File::Spec
# 

use File::Spec;
my $path = File::Spec->catdir( $name);
print "$path\n";  # \usr\local\bin\perl
my $curdir = File::Spec->curdir();
print "$curdir\n";
my $rootdir = File::Spec->rootdir();
print "$rootdir\n";
# my $new_name = File::Spec->catfile($dirname,$basename)  # 将dirname和basename组合成一个完整的文件路径名
# print "new_name is $new_name\n";
# rename($name,$new_name) 
	# or die "Can't rename '$name' to '$new_name':$!";