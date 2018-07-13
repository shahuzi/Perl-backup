
use utf8;
foreach $rock (qw/bedrock slate lava/)
{
	print "One rock is $rock.\n";
}


@rocks = qw / bedrock slate lava/;
foreach $rock (@rocks)
{
	$rock = "\t$rock"; # 在@rocks的每个元素前加跳格符
	$rock.="\n";
}
print "The rocks are:\n",@rocks;

print "$rock\n";  # $rock还是循环前的值，undef,因为在使用它前并未定义
