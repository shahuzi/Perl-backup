use strict;
use warnings;

# 自动匹配变量
# $& $` $'

# 在正则表达式中，字符串里实际匹配模式的部分会被自动存进这个变量中
# 注意，这个和捕获变量不太相同，捕获变量是括号内匹配的内容


if ("Hello there, neighbor" =~ /\s(\w+),/)
{
	print "That actually matched '$&'.\n";
}

# 上例实际匹配内容为' there,'
# $1是括号内的内容能够，即there

open IN1,"lary";

while(<IN1>)
{
	if (/ can/)
	{
		print "Matched section is '$&'\n";
		print "Before the matched section is '$`'\n";
		print "After the matched section is '$''\n";
	}
}

close IN1;
# 其中$`获取字符串中匹配部分之前的内容
# $'获取字符串中匹配部分之后的内容
