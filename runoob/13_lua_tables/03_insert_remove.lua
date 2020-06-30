-- 插入和移除

-- 以下实例演示了 table 的插入和移除操作:
-- 实例
fruits = {"banana","orange","apple"}

-- 在末尾插入
table.insert(fruits,"mango")
print("索引为 4 的元素为 ",fruits[4])
print("=======================")
for i,v in ipairs(fruits) do
    print(i,v)
end

-- 在索引为 2 的键处插入
print("=======================")
table.insert(fruits,2,"grapes")
for i,v in ipairs(fruits) do
    print(i,v)
end
print("索引为 2 的元素为 ",fruits[2])


print("=======================")

print("最后一个元素为 ",fruits[5])
table.remove(fruits)
print("移除后最后一个元素为 ",fruits[5])
for i,v in ipairs(fruits) do
    print(i,v)
end

-- 执行以上代码输出结果为：

-- 索引为 4 的元素为     mango
-- 索引为 2 的元素为     grapes
-- 最后一个元素为     mango
-- 移除后最后一个元素为     nil