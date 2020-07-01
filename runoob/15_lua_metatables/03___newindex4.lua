-- 【 只读的table】

-- 通过代理的概念，可以很容易的实现只读的table。
-- 只需要跟踪所有对table的更新操作，并引发一个错误就好了，
-- 对于查询时，我们不用去馆，只需要管对table的更新操作，
-- 废话不说，来段简单的代码，自然而然的一目了然了。

function readOnly(t)
    local proxy = {}

    -- 创建元表
    local mt = {
         __index = t,
         __newindex = function (t, k, v)
            print("==================")
              error("Attempt to update a read-only table", 2)
         end
    }

    setmetatable(proxy, mt)
    return proxy
end

local tbDemo = readOnly{1, 2, 3, 4, 5}
print(tbDemo[1])
tbDemo[1] = 20