use strict;
use warnings;
# 捕捉变量

# 将欲捕获的变量用括号包围起来即可
# 捕获单个变量
my $line = "Hello there, neighbor"; # 匹配到结果就结束
if ($line =~ /\s(\w+)/)
{
	print "the word was $1\n";
}

# 捕获多个变量

if ($line =~ /(\w+)\s(\w+,) (\w+)/)
{
	print "words were $1 $2 $3\n";
}

# 注意，捕获变量可能为空，即结果是空字符串，

my $dino = "I think that one thousands dolloars is not enough!";
if ($dino =~ /(\d*) dolloars/)
{
	print "That said '$1' dolloars\n";
}

# 捕获变量通常能存活到下次成功的模式匹配为止，失败的匹配不会改动
# 上次匹配时的内容，而成功的会将其重置


# 不捕获模式，通过在左括号加?: 即(?:)
# 以告知perl这一对括号只是为了分组而存在的
# 后面的括号才开始从$1编号
# 而并不捕获该括号里的内容

my $food = "There are bronto,saurus,steak and burger";
if ( $food =~ /(?:bronto)?,saurus,(steak|burger)/)
{
	print "Fred wnts a $1\n";
}