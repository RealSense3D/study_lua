-- 其他运算符

-- 下表列出了 Lua 语言中的连接运算符与计算表或字符串长度的运算符：
-- 操作符	描述	实例
-- ..	连接两个字符串	a..b ，其中 a 为 "Hello " ， b 为 "World", 输出结果为 "Hello World"。
-- #	一元运算符，返回字符串或表的长度。	#"Hello" 返回 5
-- 实例

-- 我们可以通过以下实例来更加透彻的理解连接运算符与计算表或字符串长度的运算符的应用：
-- 实例
a = "Hello "
b = "World"

print("连接字符串 a 和 b ", a..b )

print("b 字符串长度 ",#b )

print("字符串 Test 长度 ",#"Test" )

print("菜鸟教程网址长度 ",#"www.runoob.com" )

-- 以上程序执行结果为：

-- 连接字符串 a 和 b     Hello World
-- b 字符串长度     5
-- 字符串 Test 长度     4
-- 菜鸟教程网址长度     14