-- 逻辑运算符

-- 下表列出了 Lua 语言中的常用逻辑运算符，设定 A 的值为 true，B 的值为 false：
-- 操作符	描述	实例
-- and	逻辑与操作符。 若 A 为 false，则返回 A，否则返回 B。	(A and B) 为 false。
-- or	逻辑或操作符。 若 A 为 true，则返回 A，否则返回 B。	(A or B) 为 true。
-- not	逻辑非操作符。与逻辑运算结果相反，如果条件为 true，逻辑非为 false。	not(A and B) 为 true。
-- 实例

-- 我们可以通过以下实例来更加透彻的理解逻辑运算符的应用：
-- 实例
a = true
b = true

if ( a and b )
then
   print("a and b - 条件为 true" )
end

if ( a or b )
then
   print("a or b - 条件为 true" )
end

print("---------分割线---------" )

-- 修改 a 和 b 的值
a = false
b = true

if ( a and b )
then
   print("a and b - 条件为 true" )
else
   print("a and b - 条件为 false" )
end

if ( not( a and b) )
then
   print("not( a and b) - 条件为 true" )
else
   print("not( a and b) - 条件为 false" )
end

-- 以上程序执行结果为：

-- a and b - 条件为 true
-- a or b - 条件为 true
-- ---------分割线---------
-- a and b - 条件为 false
-- not( a and b) - 条件为 true