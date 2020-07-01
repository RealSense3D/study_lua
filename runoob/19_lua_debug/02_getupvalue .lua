function newCounter ()
        local n = 0
        local k = 0
        return function ()
                k = n
                n = n + 1
                return n
                end
end

counter = newCounter ()
print(counter())
print(counter())

local i = 1

repeat
        name, val = debug.getupvalue(counter, i)
        if name then
                print ("index", i, name, "=", val)
                if(name == "n") then
                        debug.setupvalue (counter,2,10)
                end
                i = i + 1
        end -- if
until not name

print(counter())



-- 执行以上代码输出结果为：

-- 1
-- 2
-- index    1    k    =    1
-- index    2    n    =    2
-- 11

-- 在以上实例中，计数器在每次调用时都会自增1。
-- 实例中我们使用了 getupvalue 函数查看局部变量的当前状态。
-- 我们可以设置局部变量为新值。实例中，在设置前 n 的值为 2,使用 setupvalue 函数将其设置为 10。
-- 现在我们调用函数，执行后输出为 11 而不是 3。