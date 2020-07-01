-- 如果想要同时监视几个table，无须为每个table创建不同的元表；
-- 相反，只要以某种形式将每个代理与其原table关联起来，并且所有代理都共享一个公共的元表。
-- 这个问题与设置table默认值相关联的问题类似，
-- 也是将原来的table保存在代理table的一个特殊的字段中。
-- 代码如下：

-- 创建唯一索引
local index = {}

-- 创建元表
local mt = {
     __index = function (t, k)
          print("access to element " .. tostring(k))
          return t[index][k]
     end,

     __newindex = function (t, k, v)
          print("update of element " .. tostring(k))
          t[index][k] = v
     end
}

function track(t)
     local proxy = {}
     proxy[index] = t
     setmetatable(proxy, mt)
     return proxy
end

local t = {}
local proxy = track(t)
proxy.x = 10
print(proxy.x)


for k,v in pairs(t) do
     print(k,v)
end


for k,v in pairs(proxy) do
     print(k,v)
end

