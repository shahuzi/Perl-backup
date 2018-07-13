use strict;
use warnings;

print "Please input the first name(one of yajie,yuyang,huidi)\n";
my %friends = ("yajie","zhang","yuyang","liu","huidi","jia");


# foreach(keys %friends)
# {
	# print " $_ => $friends{$_} \n";
# }
while(chomp(my $name = <STDIN>))
{
	if (exists $friends{$name})
	{
		print "$name"."'s second name is $friends{$name}\n";
	}
	else
	{
		print "Please input one of the threes\n";
	}
	
}