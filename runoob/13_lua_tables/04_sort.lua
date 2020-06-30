-- Table 排序

-- 以下实例演示了 sort() 方法的使用，用于对 Table 进行排序：
-- 实例
fruits = {"banana","orange","apple","grapes"}
print("排序前")
for k,v in ipairs(fruits) do
        print(k,v)
end

table.sort(fruits)
print("排序后")
for k,v in ipairs(fruits) do
        print(k,v)
end

-- 执行以上代码输出结果为：

-- 排序前
-- 1    banana
-- 2    orange
-- 3    apple
-- 4    grapes
-- 排序后
-- 1    apple
-- 2    banana
-- 3    grapes
-- 4    orange