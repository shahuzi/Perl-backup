use strict;
use warnings;

# 这是一些可选的修饰符，有时候称为开关。他们可以组成附加在某个正则表达式结尾的定界符的右边，并改变正则表达式的默认行为。

# 1.用/i来进行大小写无关的匹配
print "Would like to play a game?\n";
chomp($_ = <STDIN>);
if (/yes/i)  # 大小写无关的匹配
{
	print "Ok!Let's go!\n";
}

# 2.用/s来匹配任意字符，它会将模式中的每个点号
# 按任意字符来处理

$_ = "I saw Barney\ndown at the bowling alley\nwith fred\nlast night.\n";
if (/Barney.*fred/s)
{
	print "That string mentions fred after Barney!\n";
}
else
{
	print "Not good!\n";
}

# 3.用/x加入空白
# /x能在模式里面随意加空白，目的是使它更容易阅读、理解
# 例 /-?\d+\.?\d*/  都挤在一起，容易混淆
#    / -? \d+ \.? \d* /x  加入空白，稍微清晰一些
# 由于加上/x后模式里可以任意插入空白，所以原始的空白与制表符就失去了
# 意义，他们会被忽略掉，如果还想匹配空白与制表符，就得在前面补上一个反斜线字符
# 不过，\s \s* \s+还是比较常见的匹配空白字符的写法


$_ = "What a amazing	things\n";
if(/What \s .* amazing /x)
{
	print "It works!\n";
} 

# 4.组合选项修饰符
# 如果一个模式中使用多个修饰符，可将它们连在一起使用
# 它们之间的先后顺序并不影响匹配的结果

$_ = "Barney is\n the best freind of Fred\n";
if(/barney .* fred/isx)
{
	print "It also works!\n";
}