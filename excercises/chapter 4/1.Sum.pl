use strict;
sub total
{
	my $sum = 0;
	foreach(@_)
	{
		$sum+=$_;
	}
	$sum;
}
# my @fred = qw{1 3 5 7 9};
# my $fred_total = total(@fred);
# print "The total of \@fred is $fred_total.\n";
# print "Enter some numbers on separate lines:";
# my $user_total = total(<STDIN>);
# print "The total of those numbers is $user_total.\n";

my $sum_to_100 = total(1..100);
print "The total of 1..100 is $sum_to_100.\n";

sub above_average
{

	my $average = total(@_)/($#_ + 1);  # 列表的长度还可以用 my $len = @_;获取
	my @return;
	foreach(@_)
	{
		if ($_ > $average)
		{
			push @return,$_;
		}
	}
	@return;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";

my @barney = above_average(100,1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

