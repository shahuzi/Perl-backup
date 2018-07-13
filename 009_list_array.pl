# 列表的qw简写
# ("fred","barney","betty","willma","dino")
qw( fred barney betty willma dino); # 等效于上面
# 上面的括号成为定界符，定界符有很多种，有很灵活的用法

# 列表的赋值

($fred,$barney,$dino) = ("fred","barney",undef);
print " \$fred = $fred \$barney = $barney \$dino = $dino\n";

# 交换列表的值
($fred,$barney) = ($barney,$fred);
print " \$fred = $fred \$barney = $barney \$dino = $dino\n";

# 使用列表创建一个字符串数组
($rocks[0],$rocks[1],$rocks[2],$rocks[3])
			= qw/talc mica feldspar quartz/;

# 引用数组:在数组名前加@ 读作all of the
# 故也可以用这种方法进行数组的赋值
@line = qw/ I won't let you go!/;

print "@rocks\n";
print "@line\n";  # 发现@line[0] 等效于 $line[0]


# pop 与 push
# pop 取出数组的最后一个元素，同时返回该元素的值
# 若数组是空的，则pop什么都不做，返回undef
@array = 5..9;
$fred = pop(@array);  # $fred = 9 @array = (5,6,7,8)
$barney = pop(@array); # $barney = 8
pop @array; # @array = (5,6)

print "\$fred = $fred \$barney = $barney \@array = @array\n";

# push 在末端添加元素

push @array,8;
push @array,9;

@others = qw/9 0 2 1 0/;
push @array,@others;

print "@array\n";

# shift 与 unshift
# 是与pop push对应的，只不过是对数组开头的元素操作
# shift 拿掉开头的元素 unshift 在开头新增元素

shift @array;
print "@array\n";
shift @array;
print "@array\n";
unshift @array,5;
print "@array\n";
unshift @array,6;
print "@array\n";


chomp(@lines = <STDIN>);
print @lines;















