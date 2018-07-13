# chomp(@nums = <STDIN>);
# foreach $num (@nums)
# {
	# if ($num eq 1)
	# {
		# print "fred\n";
	# }
	# if ($num eq 2)
	# {
		# print "betty\n";
	# }
	# if ($num eq 3)
	# {
		# print "barney\n";
	# }
	# if ($num eq 4)
	# {
		# print "dino\n";
	# }
	# if ($num eq 5)
	# {
		# print "wilma\n";
	# }
	# if ($num eq 6)
	# {
		# print "pebbles\n";
	# }
	# if ($num eq 7)
	# {
		# print "bamm-bamm\n";
	# }
# }

# 简单方法
@names = qw/fred betty barney dino wilma pebbles bamm-bamm/;
chomp(@nums = <STDIN>);
foreach(@nums)
{
	print "$names[$_ - 1]\n";  # 减一的原因是，数组的索引是从0开始的
}