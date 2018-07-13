use strict;
use warnings;

# split 会根据分隔符拆分一个字符串
# 用法为 @fields = split /separator/, $string;
# split操作符用拆分模式扫过指定的字符串，并返回字段（子串）列表，期间只要模式在某处匹配成功，该处就是一个字段的结尾、下一个字段的开头。所以，任何匹配模式的内容都不会出现在返回的字符串中。

my @fields = split /:/,"abc:def:g:h"; # 得到("abc","def","g","h")
foreach(@fields)
{
	print "$_\n";
}

# split 会保留开头出的空字段，并省略结尾处的空字段

@fields = split /:/,":::a:b:c:::"; # 得到("","","","a","b","c")
foreach(@fields)
{
	print "$_\n";
}

# 利用/\s+/模式进行空白分隔也是常见的做法，在此模式下，所有的空白会被当成一个空格来处理

my $some_input = "This  is a \t        test.\n";
my @args = split /\s+/, $some_input;
# 得到("This","is","a","test.")
foreach(@args)
{
	print "$_\n";
}

# split 默认会以空白字符分割S_
# my @fields = split; 等效于 split /\s+/,$_;
# 相比于/\s+/的模式，它会省略开头的空字段，所以，即使该行以空白开头，也不会在返回列表的开头处看到空字段。

