-- 【记录table的访问】

-- 有的时候，一种特定的需求，我们需要记录对一个table的所有访问，不管是查询还是更新，我们都需要记录日志。
-- 这如何完成？
-- 我们都知道，元表中的__index和__newindex是在table中没有所需要访问的index时才发挥作用的，
-- 因此，只有将一个table保持为空，然后设置__index和__newindex元方法，才有可能记录下来所有对它的访问。

-- 为了监视一个table的所有访问，就应该为真正的table创建一个代理。
-- 这个代理就是一个空的table，
-- 其中__index和__newindex元方法可用于跟踪所有的访问，并将访问重定义到原来的table上。
-- 这就是思路，接下来看代码：

local t = {} --原来的table

-- 保持对原table的一个引用
local _t = t

-- 创建代理
t = {}

-- 创建元表
local mt = {
__index = function (t, k)
print("access to element " .. tostring(k))
return _t[k]
end,

__newindex = function (t, k, v)
print("update of element " .. tostring(k))
_t[k] = v
end
}

setmetatable(t, mt)

t.x = 10 -- update of element x
print(t.x) -- access to element x