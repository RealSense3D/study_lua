-- 算术运算符

-- 下表列出了 Lua 语言中的常用算术运算符，设定 A 的值为10，B 的值为 20：
-- 操作符	描述	实例
-- +	加法	A + B 输出结果 30
-- -	减法	A - B 输出结果 -10
-- *	乘法	A * B 输出结果 200
-- /	除法	B / A w输出结果 2
-- %	取余	B % A 输出结果 0
-- ^	乘幂	A^2 输出结果 100
-- -	负号	-A 输出结果 -10

-- 算术运算符的应用：
-- 实例
a = 21
b = 10
c = a + b
print("Line 1 - c 的值为 ", c )
c = a - b
print("Line 2 - c 的值为 ", c )
c = a * b
print("Line 3 - c 的值为 ", c )
c = a / b
print("Line 4 - c 的值为 ", c )
c = a % b
print("Line 5 - c 的值为 ", c )
c = a^2
print("Line 6 - c 的值为 ", c )
c = -a
print("Line 7 - c 的值为 ", c )

-- 以上程序执行结果为：

-- Line 1 - c 的值为     31
-- Line 2 - c 的值为     11
-- Line 3 - c 的值为     210
-- Line 4 - c 的值为     2.1
-- Line 5 - c 的值为     1
-- Line 6 - c 的值为     441
-- Line 7 - c 的值为     -21