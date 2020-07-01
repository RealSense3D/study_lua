-- 一个简单实例

-- 以下简单的类包含了三个属性： area, length 和 breadth，printArea方法用于打印计算结果：
-- 实例
-- 元类
Rectangle = {area = 0, length = 0, breadth = 0}

-- 派生类的方法 new
function Rectangle:new (o,length,breadth)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.length = length or 0
  self.breadth = breadth or 0
  self.area = length*breadth;
  return o
end

-- 派生类的方法 printArea
function Rectangle:printArea ()
  print("矩形面积为 ",self.area)
end
-- 创建对象

-- 创建对象是为类的实例分配内存的过程。每个类都有属于自己的内存并共享公共数据。

r = Rectangle:new(nil,10,20)

-- 访问属性

-- 我们可以使用点号(.)来访问类的属性：

print(r.length)

-- 访问成员函数

-- 我们可以使用冒号 : 来访问类的成员函数：

r:printArea()

-- 内存在对象初始化时分配。