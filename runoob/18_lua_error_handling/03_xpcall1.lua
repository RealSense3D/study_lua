-- Lua提供了xpcall函数，xpcall接收第二个参数——一个错误处理函数，
-- 当错误发生时，Lua会在调用桟展开（unwind）前调用错误处理函数，
-- 于是就可以在这个函数中使用debug库来获取关于错误的额外信息了。

-- debug库提供了两个通用的错误处理函数:

--     debug.debug：提供一个Lua提示符，让用户来检查错误的原因
--     debug.traceback：根据调用桟来构建一个扩展的错误消息

print(
    xpcall(
        function(i) 
        print(i) 
        error('error..') 
        end, 
        
        function() 
            print(debug.traceback()) 
        end, 33)
)
-- 33
-- stack traceback:
-- stdin:1: in function <stdin:1>
-- [C]: in function 'error'
-- stdin:1: in function <stdin:1>
-- [C]: in function 'xpcall'
-- stdin:1: in main chunk
-- [C]: in ?
-- false        nil
