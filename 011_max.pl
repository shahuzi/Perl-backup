# 使用子程序获得最大值

chomp(@nums = <STDIN>);
sub max{
	my($max) = shift @_;   # @_是子程序的参数列表
	foreach(@_)
	{
		if ($_ > $max)
		{
			$max = $_;
		}
	}
	$max;
}
$max = &max(@nums);
print "The max num is: $max";