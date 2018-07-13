#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;



my $date = localtime; # Fri Jun  1 00:48:18 2007
print "localtime is :$date\n";

# 在列表上下文中,localtime会返回一个数字元素组成的列表

# my ($sec,$min,$hour,$day,$mon,$year,$wday,$yday,$isdst) = localtime $timestamp;

foreach(localtime)
{
	print "$_\n";
}
# 其中$mon是0-11的月份值，$year是一个自1900年起算的年数，$wday是从0-6（星期天-星期六），$yday表示目前是今年的第几天,￥isdst应该算是否是闰年




# gmtime 返回的是世界标准时间
# 如果需要从系统时钟取得当前时间戳，可以使用time函数
# 不提供参数的情况下，不论localtime还是gmtime都是使用当前time返回的时间值

# my $timestamp = time;
# print "$timestamp\n";

my $now = gmtime;
print "gmtime is :$now\n";


















