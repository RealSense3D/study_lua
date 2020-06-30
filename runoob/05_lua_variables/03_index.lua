-- 对 table 的索引使用方括号 []。Lua 也提供了 . 操作。

-- t[i]
-- t.i                 -- 当索引为字符串类型时的一种简化写法
-- gettable_event(t,i) -- 采用索引访问本质上是一个类似这样的函数调用

t_t = {name = "guangran", year = 18 }
a_t = {"guangranliu", 18, "man"}

print(t_t["name"])
print(t_t.name)

t_t.location = "DL"

print("============================")

print(type(t_t))

for k,v in pairs(t_t) do
    print(type(k)..":"..k, "|", type(v)..":"..v)
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
