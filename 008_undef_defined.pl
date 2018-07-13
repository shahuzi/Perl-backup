# 若为定义标量变量就先使用，那么它就是undef
# 若当成数字用，就是0，当成字符串用就是空字符串
# 因此可以用来当初始化的值
# 但undef 既不是字符串也不是数字

# 例，做一个计数器
$n = 1;
while($n < 101)
{
	$sum += $n;  # $sum没有定义，第一次用时是0
	$n += 1;
}
print "The total num is $sum \n";

# 若想自己创建undef
# $aa = undef;

# defined可以用来判定某个字符串是undef，而不是空字符串


$a = <STDIN>; # 此处即使什么也不输入，defined($a)也是真
              # 即此时$a是空字符串而不是undef
if (defined($a))
{
	print "The input was $a";  
}
else
{
	print "No input available\n";
}
$b = undef;
if (defined($b))
{
	print "The input was $a";  
}
else
{
	print "No input available\n";
}
# 之所以用<STDIN>作例子是因为当<STDIN>读到文件末尾(EOF)时
# 会返回undef来表示

