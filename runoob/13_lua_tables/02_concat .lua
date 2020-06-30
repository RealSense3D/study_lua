-- Table 连接

-- 我们可以使用 concat() 输出一个列表中元素连接成的字符串:
-- 实例
fruits = {"banana","orange","apple"}
-- 返回 table 连接后的字符串
print("连接后的字符串 ",table.concat(fruits))

-- 指定连接字符
print("连接后的字符串 ",table.concat(fruits,", "))

-- 指定索引来连接 table
print("连接后的字符串 ",table.concat(fruits,", ", 2,3))

-- 执行以上代码输出结果为：

-- 连接后的字符串     bananaorangeapple
-- 连接后的字符串     banana, orange, apple
-- 连接后的字符串     orange, apple