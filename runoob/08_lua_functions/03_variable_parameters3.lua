-- 可能需要几个固定参数加上可变参数，固定参数必须放在变长参数之前:
-- 实例
function fwrite(fmt, ...)  ---> 固定的参数fmt
    return io.write(string.format(fmt, ...))    
end

fwrite("runoob\n")       --->fmt = "runoob", 没有变长参数。  
fwrite("%d%d\n", 1, 2)   --->fmt = "%d%d", 变长参数为 1 和 2

-- 输出结果为：

-- runoob
-- 12


-- print(os.time())
-- print(os.date())

-- fff = io.open("test.txt","w")
-- fff:write("zzz")
-- fff:close()
-- os.remove("test.txt")

