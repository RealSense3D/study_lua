-- 一维数组

-- 一维数组是最简单的数组，其逻辑结构是线性表。一维数组可以用for循环出数组中的元素，如下实例：
-- 实例
array = {"Lua", "Tutorial"}

for i= 0, 2 do
   print(array[i])
end

-- 以上代码执行输出结果为：

-- nil
-- Lua
-- Tutorial

-- 正如你所看到的，我们可以使用整数索引来访问数组元素，如果知道的索引没有值则返回nil。

-- 在 Lua 索引值是以 1 为起始，但你也可以指定 0 开始。

-- 除此外我们还可以以负数为数组索引值：
-- 实例
array = {}

for i= -2, 2 do
   array[i] = i *2
end

for i = -2,2 do
   print(array[i])
end

-- 以上代码执行输出结果为：

-- -4
-- -2
-- 0
-- 2
-- 4