-- 通常在遍历变长参数的时候只需要使用 {…}，然而变长参数可能会包含一些 nil，那么就可以用 select 函数来访问变长参数了：select('#', …) 或者 select(n, …)

--     select('#', …) 返回可变参数的长度
--     select(n, …) 用于返回 n 到 select('#',…) 的参数 

-- 调用select时，必须传入一个固定实参selector(选择开关)和一系列变长参数。
-- 如果selector为数字n,那么select返回它的第n个可变实参，否则只能为字符串"#",这样select会返回变长参数的总数。例子代码：
-- 实例
do  
    function foo(...)  
        for i = 1, select('#', ...) do  -->获取参数总数
            local arg = select(i, ...); -->读取参数
            print("arg", arg);  
        end  
    end  
 
    foo(1, 2, 3, 4, nil);  
end

-- 输出结果为：

-- arg    1
-- arg    2
-- arg    3
-- arg    4
-- arg	nil