$radius = 12.5;
$circumference = 2*3.141592654*$radius;

print "The circle circumference is $circumference\n";

print "Please input the radius:";
chomp($radius = <STDIN>);
if ($radius<0)
{
	print "Your input is negative value!\n";
}
else
{
	$circumference = 2*3.141592654*$radius;
	print "The circumference of $radius is $circumference\n";
}
