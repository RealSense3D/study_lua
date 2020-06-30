-- 函数定义

-- Lua 编程语言函数定义格式如下：

-- optional_function_scope function function_name( argument1, argument2, argument3..., argumentn)
--     function_body
--     return result_params_comma_separated
-- end

-- 解析：

--     optional_function_scope: 该参数是可选的制定函数是全局函数还是局部函数，未设置该参数默认为全局函数，如果你需要设置函数为局部函数需要使用关键字 local。

--     function_name: 指定函数名称。

--     argument1, argument2, argument3..., argumentn: 函数参数，多个参数以逗号隔开，函数也可以不带参数。

--     function_body: 函数体，函数中需要执行的代码语句块。

--     result_params_comma_separated: 函数返回值，Lua语言函数可以返回多个值，每个值以逗号隔开。

-- 实例定义了函数 max()，参数为 num1, num2，用于比较两值的大小，并返回最大值：

--[[ 函数返回两个值的最大值 --]]
function max(num1, num2)

   if (num1 > num2) then
      result = num1;
   else
      result = num2;
   end

   return result;
end
-- 调用函数
print("两值比较最大值为 ",max(10,4))
print("两值比较最大值为 ",max(5,6))