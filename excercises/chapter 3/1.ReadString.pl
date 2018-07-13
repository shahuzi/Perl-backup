chomp(@lines = <STDIN>);

# 下面这一步事实上是多加的
foreach $line (@lines)
{
	$line = reverse $line;
}

@lines = reverse @lines ;
print "@lines\n";