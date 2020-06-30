-- Lua 编程语言中 for 循环嵌套语法格式:

-- for init,max/min value, increment
-- do
--    for init,max/min value, increment
--    do
--       statements
--    end
--    statements
-- end

----------------------------------------

-- Lua 编程语言中 while 循环嵌套语法格式:

-- while(condition)
-- do
--    while(condition)
--    do
--       statements
--    end
--    statements
-- end

----------------------------------------

-- Lua 编程语言中 repeat...until 循环嵌套语法格式:

-- repeat
--    statements
--    repeat
--       statements
--    until( condition )
-- until( condition )

j =2
for i=2,10 do
    for j=2,(i/j) , 2 do
        print("i:"..i,"j:"..j, i%j, not(i%j))
    if(not(i%j))
    then
        break
    end
    
    if(j > (i/j))then
        print("-->", "i:"..i,"j:"..j)
    end
    end
end