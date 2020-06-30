-- 多状态的迭代器

--[[ 很多情况下，迭代器需要保存多个状态信息而不是简单的状态常量和控制变量，最简单的方法是使用闭包，
还有一种方法就是将所有的状态信息封装到 table 内，将 table 作为迭代器的状态常量，
因为这种情况下可以将所有的信息存放在 table 内，所以迭代函数通常不需要第二个参数。
 ]]

-- 以下实例我们创建了自己的迭代器：
-- 实例

array = {"Google", "Runoob"}

function elementIterator (collection)
   local index = 0
   local count = #collection
   print(index , count)
   -- 闭包函数
   return function ()
      index = index + 1
      print("-->"..index , count)

      if index <= count
      then
         --  返回迭代器的当前元素
         return collection[index]
      end
   end
end

for element in elementIterator(array)
do
   print(element)
end

-- 以上实例输出结果为：

-- Google
-- Runoob

-- 以上实例中我们可以看到，elementIterator 内使用了闭包函数，实现计算集合大小并输出各个元素。