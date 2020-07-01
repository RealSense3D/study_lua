-- __newindex 元方法

-- __newindex 元方法用来对表更新，__index则用来对表访问 。

-- 当你给表的一个缺少的索引赋值，解释器就会查找__newindex 元方法：如果存在则调用这个函数而不进行赋值操作。

-- 以下实例演示了 __newindex 元方法的应用：
-- 实例
mymetatable = {newkey="132"}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })
-- mytable = setmetatable({key1 = "value1"}, { __index = mymetatable })

print("=============1=============")

print(mytable.key1)
print(mytable.newkey)
print("============2==============")

mytable.newkey = "新值2"
print(mytable.newkey,mymetatable.newkey)

mytable.key1 = "新值1"
print(mytable.key1,mymetatable.key1)

print("=============3=============")
for k,v in pairs(mytable) do
    print(k,v)
end

print("=============4=============")
for k,v in pairs(mymetatable) do
    print(k,v)
end

-- 以上实例执行输出结果为：

-- =============1=============
-- value1
-- nil
-- ============2==============
-- nil	新值2
-- 新值1	nil
-- =============3=============
-- key1	新值1
-- =============4=============
-- newkey	新值2

-- 以上实例中表设置了元方法 __newindex，
-- 在对新索引键（newkey）赋值时（mytable.newkey = "新值2"），会调用元方法，而不进行赋值。
-- 而如果对已存在的索引键（key1），则会进行赋值，而不调用元方法 __newindex。

-- 以下实例使用了 rawset 函数来更新表：
-- 实例
print("=============5=============")

mytable = setmetatable({key1 = "value1"}, {
  __newindex = function(mytable, key, value)
                rawset(mytable, key, "\""..value.."\"")

  end
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1,mytable.key2)

-- 以上实例执行输出结果为：

-- new value    "4"

-- 为表添加操作符

-- 以下实例演示了两表相加操作：
-- 实例
print("=============================")
-- 计算表中最大值，table.maxn在Lua5.2以上版本中已无法使用
-- 自定义计算表中最大键值函数 table_maxn，即计算表的元素个数
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- 两表相加操作
mytable = setmetatable({ 1, 2, 3 }, {
  __add = function(mytable, newtable)
    for i = 1, table_maxn(newtable) do
      table.insert(mytable, table_maxn(mytable)+1,newtable[i])
    end
    return mytable
  end
})

secondtable = {4,5,6}

mytable = mytable + secondtable
for k,v in ipairs(mytable) do
print(k,v)
end

print(mytable[1])

-- 以上实例执行输出结果为：

-- 1    1
-- 2    2
-- 3    3
-- 4    4
-- 5    5
-- 6    6

-- __add 键包含在元表中，并进行相加操作。 表中对应的操作列表如下：(注意：__是两个下划线)
-- 模式	描述
-- __add	对应的运算符 '+'.
-- __sub	对应的运算符 '-'.
-- __mul	对应的运算符 '*'.
-- __div	对应的运算符 '/'.
-- __mod	对应的运算符 '%'.
-- __unm	对应的运算符 '-'.
-- __concat	对应的运算符 '..'.
-- __eq	对应的运算符 '=='.
-- __lt	对应的运算符 '<'.
-- __le	对应的运算符 '<='.