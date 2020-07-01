local co = coroutine.create(
    function (input)
        print("input : "..input)
        local param1, param2 = coroutine.yield("yield")
        print("param1 is : "..param1)
        print("param2 is : "..param2)
        -- return 也会将结果返回给 resume
        return "return"
    end)

--第一次执行,将参数传给input
print(coroutine.resume(co, "function input"))
print("this is main chunk")
--第二次执行,将参数作为yield的返回值,传给param1 param2
print(coroutine.resume(co, "param1", "param2"))

-- Output:
-- input : function input
-- true    yield
-- this is main chunk
-- param1 is : param1
-- param2 is : param2
-- true    return