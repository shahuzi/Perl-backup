# 输入，使用<STDIN>
# <STDIN>返回的字符串后面包含一个换行符

$line = <STDIN>;
if ($line eq "\n")
{
	print "That was just a blank line!\n";
}
else
{
	print "That line of input was:$line";
}

# 此时可以使用chomp操作符，它只能用在一个变量上，
# 而且该变量的内容必须为字符串，如果字符串的结尾
# 是换行符，chomp可以将它移除
# 它是去除字符串末尾换行符最佳方式
$text = "This is a line of text\n";
print "Before chomp '$text' the \\n is there\n";
chomp($text);
print "After chomp '$text' the \\n is gone\n";

# 实际上chomp更多这样用
# chomp($text =<STDIN>);
# 等效于
# $text = <STDIN>
# chomp($text);
# chomp 返回的是实际移除的字符数，即1
# 若字符串后面有两个以上换行符，chomp只删除一个
# 若结尾处没有换行符，它什么也不做，直接返回0
print "Please input a food:\n";
chomp($food=<STDIN>);
print "The food you input is:$food";

