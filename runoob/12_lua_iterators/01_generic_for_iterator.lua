-- 泛型 for 迭代器

-- 泛型 for 在自己内部保存迭代函数，实际上它保存三个值：迭代函数、状态常量、控制变量。

-- 泛型 for 迭代器提供了集合的 key/value 对，语法格式如下：

-- for k, v in pairs(t) do
--     print(k, v)
-- end

-- 上面代码中，k, v为变量列表；pairs(t)为表达式列表。

-- 查看以下实例:
-- 实例
array = {"Google", "Runoob"}

for key,value in ipairs(array)
do
   print(key, value)
end

-- 以上代码执行输出结果为：

-- 1  Google
-- 2  Runoob

-- 以上实例中我们使用了 Lua 默认提供的迭代函数 ipairs。

-- 下面我们看看泛型 for 的执行过程：

--     首先，初始化，计算 in 后面表达式的值，表达式应该返回泛型 for 需要的三个值：迭代函数、状态常量、控制变量；与多值赋值一样，如果表达式返回的结果个数不足三个会自动用 nil 补足，多出部分会被忽略。
--     第二，将状态常量和控制变量作为参数调用迭代函数（注意：对于 for 结构来说，状态常量没有用处，仅仅在初始化时获取他的值并传递给迭代函数）。
--     第三，将迭代函数返回的值赋给变量列表。
--     第四，如果返回的第一个值为nil循环结束，否则执行循环体。
--     第五，回到第二步再次调用迭代函数
