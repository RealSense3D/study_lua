-- 在Lua中我们常常使用函数来描述迭代器，每次调用该函数就返回集合的下一个元素。Lua 的迭代器包含以下两种类型：

--     无状态的迭代器
--     多状态的迭代器

-- 无状态的迭代器

-- 无状态的迭代器是指不保留任何状态的迭代器，因此在循环中我们可以利用无状态迭代器避免创建闭包花费额外的代价。

-- 每一次迭代，迭代函数都是用两个变量（状态常量和控制变量）的值作为参数被调用，一个无状态的迭代器只利用这两个值可以获取下一个元素。

-- 这种无状态迭代器的典型的简单的例子是 ipairs，它遍历数组的每一个元素。

-- 以下实例我们使用了一个简单的函数来实现迭代器，实现 数字 n 的平方：
-- 实例
local a = 0
function square(iteratorMaxCount,currentNumber)
   if currentNumber<iteratorMaxCount
   then
      currentNumber = currentNumber+1
      a = currentNumber
      print("currentNumber:" .. currentNumber)
   return currentNumber, currentNumber*currentNumber
   end
end

-- for i,n in square,3,0
-- do
--    print(i,n)
--    print("a:".. a)
-- end

-- 以上实例输出结果为：

-- 1    1
-- 2    4
-- 3    9

-- 迭代的状态包括被遍历的表（循环过程中不会改变的状态常量）
-- 和当前的索引下标（控制变量），ipairs 和迭代函数都很简单，
-- 我们在 Lua 中可以这样实现：
-- 实例
function iter (a, i)
    i = i + 1
    local v = a[i]
    print("i: "..i )
    if v then
    print("--> a["..i .. "]" .. a[i])
       return i, v
    end
end
 
function mipairs (a)
    return iter, a, 0
end

tab = {"guangran", 18, "Dalian"}

for k,v in mipairs(tab)
do
   print(k,v)
end


--[[ 
    当 Lua 调用 ipairs(a) 开始循环时，他获取三个值：
    迭代函数 iter、状态常量 a、控制变量初始值 0；
    然后 Lua 调用 iter(a,0) 返回 1, a[1]（除非 a[1]=nil）；
    第二次迭代调用 iter(a,1) 返回 2, a[2]……直到第一个 nil 元素。 
    ]]