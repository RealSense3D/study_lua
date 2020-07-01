-- Lua 继承

-- 继承是指一个对象直接使用另一对象的属性和方法。可用于扩展基础类的属性和方法。

-- 以下演示了一个简单的继承实例：
-- Meta class
Shape = {area = 0}
-- 基础类方法 new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end
-- 基础类方法 printArea
function Shape:printArea ()
  print("面积为 ",self.area)
end

-- 接下来的实例，Square 对象继承了 Shape 类:
Square = Shape:new()
-- Derived class method new
function Square:new (o,side)
  o = o or Shape:new(o,side)
  setmetatable(o, self)
  self.__index = self
  return o
end