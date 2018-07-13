use strict;
use warnings;
my %hash;
open IN,"file.txt";
my  ($name,@name);
# while(chomp($name = <IN>))
# {
	# print "$name\n";
# }
my $total_lines = 0;
# chomp(@name = <IN>);
while ($name = <IN>)
{
	chomp($name);
	$total_lines+=1;
	$hash{$name} += 1;
	# if (exists $hash{$name}) # 不需要
	# {
		# $hash{$name} += 1; 
	# }
	# else
	# {
		# $hash{$name} = 1;
	# }
}

foreach my $keys (sort keys %hash)
{
	print "$keys appearent $hash{$keys} times\n";
	
}
print "Total lines is:$total_lines\n";

# my (@words,%count,$word);
# chomp(@words=<IN>);
# foreach $word (@words)
# {
	# $count{$word} += 1;
# }
# foreach $word (keys %count)
# {
	# print "$word was seen $count{$word} times\n";
# }
close IN;