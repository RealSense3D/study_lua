-- Lua if 语句 由一个布尔表达式作为条件判断，其后紧跟其他语句组成。
-- Lua if 语句语法格式如下：

-- if(布尔表达式)
-- then
--    --[ 在布尔表达式为 true 时执行的语句 --]
-- end

-- 在布尔表达式为 true 时会if中的代码块会被执行，在布尔表达式为 false 时，紧跟在 if 语句 end 之后的代码会被执行。

-- Lua认为false和nil为假，true 和非nil为真。要注意的是Lua中 0 为 true。


--[ 定义变量 --]
a = 10;

--[ 使用 if 语句 --]
if( a < 20 )
then
   --[ if 条件为 true 时打印以下信息 --]
   print("a 小于 20" );
end
print("a 的值为:", a);