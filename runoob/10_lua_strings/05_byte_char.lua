-- 字符与整数相互转换

-- 以下实例演示了字符与整数相互转换：
-- 实例
-- 字符转换
-- 转换第一个字符
print(string.byte("Lua"))
-- 转换第三个字符
print(string.byte("Lua",3))
-- 转换末尾第一个字符
print(string.byte("Lua",-1))
-- 第二个字符
print(string.byte("Lua",2))
-- 转换末尾第二个字符
print(string.byte("Lua",-2))

-- 整数 ASCII 码转换为字符
print(string.char(97))

-- 以上代码执行结果为：

-- 76
-- 97
-- 97
-- 117
-- 117
-- a

-- for i=1,127 do
--     print(i, string.char(i))
-- end
