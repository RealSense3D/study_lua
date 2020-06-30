-- 泛型 for 循环通过一个迭代器函数来遍历所有值，类似 java 中的 foreach 语句。

-- Lua 编程语言中泛型 for 循环语法格式:
--打印数组a的所有值  
a = {"one", "two", "three"}
for i, v in ipairs(a) do
    print(i, v)
end 

days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}  
for i,v in ipairs(days) do
    print(v) 
end   



for k,v in pairs(days) do
    print(k,v)
end