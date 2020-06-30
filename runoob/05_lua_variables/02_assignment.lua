a = "hello" .. " " .. "world"

t = {n=3}
t.n = t.n + 1


print(a)
print(t.n)


-- Lua 可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分开，赋值语句右边的值会依次赋给左边的变量。 
x = "13"
a, b = 10, 2*x       -- >       a=10; b=2*x

print(a .."  ".. b)


-- 遇到赋值语句Lua会先计算右边所有的值然后再执行赋值操作，所以我们可以这样进行交换变量的值： 

x, y = 1, 2
x, y = y, x                     -- swap 'x' for 'y'
-- a[i], a[j] = a[j], a[i]         -- swap 'a[i]' for 'a[j]'

print(x .."  ".. y)

-- 当变量个数和值的个数不一致时，Lua会一直以变量个数为基础采取以下策略：
-- a. 变量个数 > 值的个数             按变量个数补足nil
-- b. 变量个数 < 值的个数             多余的值会被忽略


a, b, c = 0, 1
print(a,b,c)             --> 0   1   nil
 
a, b = a+1, b+1, b+2     -- value of b+2 is ignored
print(a,b)               --> 1   2
 
a, b, c = 0
print(a,b,c)             --> 0   nil   nil


-- 上面最后一个例子是一个常见的错误情况，注意：如果要对多个变量赋值必须依次对每个变量赋值。 
a, b, c = 0, 0, 0
print(a,b,c)             --> 0   0   0


