-- Lua 编程语言中 for 循环语句可以重复执行指定语句，重复次数可在 for 语句中控制。

-- Lua 编程语言中 for语句有两大类：：

--     数值for循环
--     泛型for循环

--[[
    var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var，并执行一次 "执行体"。
    exp3 是可选的，如果不指定，默认为1。
--]] 
-- for var=exp1,exp2,exp3 do  
--     <执行体>  
-- end  

for i=10,1,-1 do
    print(i)
end

print("============================")

-- for的三个表达式在循环开始前一次性求值，以后不再进行求值。

function f(x)  
    print("function")  
    return x*2  
end  
for i=1,f(5) do 
    print(i)  
end


