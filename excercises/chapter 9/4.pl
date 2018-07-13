use strict;
use warnings;


$^I = '.bak';
while(<>)
{
	if(/^#!/m)
	{

	}
	else
	{
		my $lines = join '',<>;
		print $lines;
	}
}
