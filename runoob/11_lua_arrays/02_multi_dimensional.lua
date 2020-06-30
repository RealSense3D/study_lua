-- 多维数组

-- 多维数组即数组中包含数组或一维数组的索引键对应一个数组。

-- 以下是一个三行三列的阵列多维数组：
-- 实例
-- 初始化数组
array = {}
for i=1,3 do
   array[i] = {}
      for j=1,3 do
         array[i][j] = i*j
      end
end

-- 访问数组
for i=1,3 do
   for j=1,3 do
      print("array[" ..i.. "][" .. j .. "]:",  array[i][j])
   end
end

-- 以上代码执行输出结果为：

-- array[1][1]:	1
-- array[1][2]:	2
-- array[1][3]:	3
-- array[2][1]:	2
-- array[2][2]:	4
-- array[2][3]:	6
-- array[3][1]:	3
-- array[3][2]:	6
-- array[3][3]:	9


-- 不同索引键的三行三列阵列多维数组：
-- 实例
-- 初始化数组
array = {}
maxRows = 3
maxColumns = 3
for row=1,maxRows do
   for col=1,maxColumns do
      array[row*maxColumns +col] = row*col
   end
end

-- 访问数组
for row=1,maxRows do
   for col=1,maxColumns do
      print("array[" .. row*maxColumns +col .. "]:", array[row*maxColumns +col])
   end
end

for i,v in pairs(array) do
    print(i,v)
end
-- 以上代码执行输出结果为：

-- array[4]:	1
-- array[5]:	2
-- array[6]:	3
-- array[7]:	2
-- array[8]:	4
-- array[9]:	6
-- array[10]:	3
-- array[11]:	6
-- array[12]:	9
-- 4	1
-- 5	2
-- 6	3
-- 7	2
-- 8	4
-- 12	9
-- 9	6
-- 10	3
-- 11	6


-- 正如你所看到的，以上的实例中，数组设定了指定的索引值，这样可以避免出现 nil 值，有利于节省内存空间。