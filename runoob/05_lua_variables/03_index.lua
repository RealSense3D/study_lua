-- 对 table 的索引使用方括号 []。Lua 也提供了 . 操作。

-- t[i]
-- t.i                 -- 当索引为字符串类型时的一种简化写法
-- gettable_event(t,i) -- 采用索引访问本质上是一个类似这样的函数调用

t_t = {name = "guangran", year = 18 ,"num", 255,"2"}
a_t = {"guangranliu", 18, "man"}

print(t_t["name"])
print(t_t.name)

t_t.location = "DL"

print("============================")

print(type(t_t))

-- pairs 输出顺序不定
-- ipairs 输出可能不完整
for k,v in pairs(t_t) do
    print(type(k)..":"..k, "|", type(v)..":"..v)
end

-- pairs遍历表中全部key，value
--[[ipairs从下标为1开始遍历，然后下标累加1，如果某个下标元素不存在就终止遍历。
    这就导致如果下标不连续或者不是从1开始的表就会中断或者遍历不到元素。]] 
for k,v in ipairs(t_t) do
    print(type(k)..":--"..k, "|", type(v)..":"..v)
end

print("============================")

print(type(a_t))
for k,v in pairs(a_t) do
    print(type(k)..":"..k, "|", type(v)..":"..v)
end

print("============================")

site = {}
site["key"] = "www.runoob.com"
print(site["key"])
print(site.key)
