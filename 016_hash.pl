use strict;
use warnings;
my %hash;

%hash = ("pywu",22,"pfwu",24);
print "hash{'pfwu'}=$hash{'pfwu'}\n";
my @array = %hash;
print "@array\n";


my @keys;
my @values;
@keys = keys %hash; #keys是一个函数，返回哈希的键列表
@values = values %hash;#values返回哈希值的列表
print "The keys of %hash are: @keys\n";
print "The values of %hash are: @values\n";

# 胖箭头
my %people_name =(
	"wu"=>"pf",
	"zhang"=>"san",
	"li"=>"si",
);
my @array1  = %people_name;
print "@array1\n";

# each函数，用两个元素列表的形式返回键/值对，每次对同一个hash
# 调用此函数，它就会返回下一组键/值对，直到所有元素都被访问过
# 然后返回空列表，因此each在使用中都是在while循环使用

while((my $key,my $value) = each %people_name)
{
	print "$key => $value\n";
}


# each返回的键/值顺序是乱的，但它与keys和values返回的顺序
# 相同，也就是hash的自然顺序，假如需要依次处理Hash,只需要对键进行排序就行了

my $key;
foreach $key (sort keys %people_name)
{
	# my $value = $people_name{$key};
	# print "$key => $value\n";
	print "$key => $people_name{$key}\n";
}


# exists 函数
# 如要检查hash中是否含有某个键，可以使用exists函数

if (exists $people_name{"zyj"})
{
	print "Yes, zyj is here\n";
}
else
{
	print "Obviously she is not here\n";
}

# delete函数能从hash中删除指定的键及其对应的值
# 假如没有这样的键，它就会直接结束，不会出现任何警告。
my $person = "zhang";
delete $people_name{$person};

print "After delete zhang\n";
# 哈希值内插
foreach $person (sort keys %people_name)
{
	if ($people_name{$person})
	{
		print "$person => $people_name{$person} \n";
	}
}

# %ENV哈希，这个hash里包含一些环境变量等信息
print "PATH is $ENV{PATH}\n";
print "CHARACTER is $ENV{CHARACTER}\n"; # 程序外获取的环境变量

foreach $key (sort keys %ENV)
{
	print "$key\n";
	print "$ENV{$key}\n";
}









