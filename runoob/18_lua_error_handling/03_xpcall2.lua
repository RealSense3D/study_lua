-- xpcall 使用实例 2:
-- 实例
function myfunction ()
   n = n/nil
end

function myerrorhandler( err )
   print( "ERROR:", err )
end

status = xpcall( myfunction, myerrorhandler )
print( status)

-- 执行以上程序会出现如下错误：

-- ERROR:    test2.lua:2: attempt to perform arithmetic on global 'n' (a nil value)
-- false