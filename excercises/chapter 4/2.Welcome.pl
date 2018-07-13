use strict;
use 5.010;
sub greet
{
	state $num = 0;
	state @names;
	push @names,@_[0];
	if ( $num == 0)
	{
		
		print "Hi @_[0]!You are the first one here!\n";
		
	}
	else
	{
		print "Hi @_[0]! $names[$num - 1] is also here!\n";
	}
	$num+=1;
}

greet("Fred");
greet("Barney");
greet("Lucia");

sub greet2
{
	state @names;
	# print " @_\n";
	my $name = @_[0];  # shift 掉的是@_
	print "Hi $name!";
	if (@names)
	{
		print "I've seen:@names\n";
	}
	else
	{
		print "You are the first one here!\n"
	}
	push @names,$name;
	# push @names,@_[0];
	# if ( $num == 0)
	# {
		
		# print "Hi @_[0]!You are the first one here!\n";
		
	# }
	# else
	# {
		# print "Hi @_[0]! I've seen:$names[0]..$names[num-1]\n";
	# }
	# $num+=1;
	
}

greet2("Fred");
greet2("Barney");
greet2("Lucia");