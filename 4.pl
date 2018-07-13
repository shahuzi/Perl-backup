# 任务描述
# 将perl目录下的pl文件，第一行加上#!/usr/bin/perl\n 字符串，注意部分文件已经含有这一字符串。

use strict;
use warnings;


my %hash;   # 用来保存文件的名称
@ARGV = glob("08*.pl");  # windows cmd下要加这个
foreach(@ARGV)
{
	$hash{$_} = 1; # 文件的名称保存在键中，值并不重要
}


while(<>)
{
	if(/^#!/m)
	{
		delete $hash{$ARGV};   # 如果开头有#!，将该文件去除
	}
	else
	{
		$_ = "#!/usr/bin/perl\n";
		print;  # 如何打印到文件内？
	}
}

# @ARGV = sort keys %hash;
# $^I = '.bak';
# my $count = 1;
# while(<>)
# {
	# if ($count == 1)
	# {
		# $_ .=  "#!/usr/bin/perl\n";  # 并不是加在第一行。
		# print;
	# }
	# $count = 0;
	# if ($_ eq undef)
	# {
		# $count = 1;
	# }

# }
 # 两个问题 1.如何加在第一行
 #          2.如何保证每个文件只加一次
