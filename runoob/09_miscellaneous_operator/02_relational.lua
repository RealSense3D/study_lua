-- 关系运算符

-- 下表列出了 Lua 语言中的常用关系运算符，设定 A 的值为10，B 的值为 20：
-- 操作符	描述	实例
-- ==	等于，检测两个值是否相等，相等返回 true，否则返回 false	(A == B) 为 false。
-- ~=	不等于，检测两个值是否相等，相等返回 false，否则返回 true	(A ~= B) 为 true。
-- >	大于，如果左边的值大于右边的值，返回 true，否则返回 false	(A > B) 为 false。
-- <	小于，如果左边的值大于右边的值，返回 false，否则返回 true	(A < B) 为 true。
-- >=	大于等于，如果左边的值大于等于右边的值，返回 true，否则返回 false	(A >= B) 返回 false。
-- <=	小于等于， 如果左边的值小于等于右边的值，返回 true，否则返回 false	(A <= B) 返回 true。
-- 实例

-- 我们可以通过以下实例来更加透彻的理解关系运算符的应用：
-- 实例
a = 21
b = 10

if( a == b )
then
   print("Line 1 - a 等于 b" )
else
   print("Line 1 - a 不等于 b" )
end

if( a ~= b )
then
   print("Line 2 - a 不等于 b" )
else
   print("Line 2 - a 等于 b" )
end

if ( a < b )
then
   print("Line 3 - a 小于 b" )
else
   print("Line 3 - a 大于等于 b" )
end

if ( a > b )
then
   print("Line 4 - a 大于 b" )
else
   print("Line 5 - a 小于等于 b" )
end

-- 修改 a 和 b 的值
a = 5
b = 20
if ( a <= b )
then
   print("Line 5 - a 小于等于  b" )
end

if ( b >= a )
then
   print("Line 6 - b 大于等于 a" )
end

-- 以上程序执行结果为：

-- Line 1 - a 不等于 b
-- Line 2 - a 不等于 b
-- Line 3 - a 大于等于 b
-- Line 4 - a 大于 b
-- Line 5 - a 小于等于  b
-- Line 6 - b 大于等于 a