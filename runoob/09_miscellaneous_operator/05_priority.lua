-- 运算符优先级

-- 从高到低的顺序：

-- ^
-- not    - (unary)
-- *      /
-- +      -
-- ..
-- <      >      <=     >=     ~=     ==
-- and
-- or

-- 除了 ^ 和 .. 外所有的二元运算符都是左连接的。

-- a+i < b/2+1          <-->       (a+i) < ((b/2)+1)
-- 5+x^2*8              <-->       5+((x^2)*8)
-- a < y and y <= z     <-->       (a < y) and (y <= z)
-- -x^2                 <-->       -(x^2)
-- x^y^z                <-->       x^(y^z)

-- 实例

-- 我们可以通过以下实例来更加透彻的了解 Lua 语言运算符的优先级：
-- 实例
a = 20
b = 10
c = 15
d = 5

e = (a + b) * c / d;-- ( 30 * 15 ) / 5
print("(a + b) * c / d 运算值为  :",e )

e = ((a + b) * c) / d; -- (30 * 15 ) / 5
print("((a + b) * c) / d 运算值为 :",e )

e = (a + b) * (c / d);-- (30) * (15/5)
print("(a + b) * (c / d) 运算值为 :",e )

e = a + (b * c) / d;  -- 20 + (150/5)
print("a + (b * c) / d 运算值为   :",e )

-- 以上程序执行结果为：

-- (a + b) * c / d 运算值为  :    90.0
-- ((a + b) * c) / d 运算值为 :    90.0
-- (a + b) * (c / d) 运算值为 :    90.0
-- a + (b * c) / d 运算值为   :    50.0