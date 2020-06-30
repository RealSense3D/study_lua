-- 字符串截取

-- 字符串截取使用 sub() 方法。

-- string.sub() 用于截取字符串，原型为：

-- string.sub(s, i [, j])

-- 参数说明：

--     s：要截取的字符串。
--     i：截取开始位置。
--     j：截取结束位置，默认为 -1，最后一个字符。

-- 实例

-- 字符串
local sourcestr = "prefix--runoobgoogletaobao--suffix"
print("\n原始字符串", string.format("%q", sourcestr))

-- 截取部分，第1个到第15个
local first_sub = string.sub(sourcestr, 4, 15)
print("\n第一次截取", string.format("%q", first_sub))

-- 取字符串前缀，第1个到第8个
local second_sub = string.sub(sourcestr, 1, 8)
print("\n第二次截取", string.format("%q", second_sub))

-- 截取最后10个
local third_sub = string.sub(sourcestr, -10)
print("\n第三次截取", string.format("%q", third_sub))

-- 索引越界，输出原始字符串
local fourth_sub = string.sub(sourcestr, -100)
print("\n第四次截取", string.format("%q", fourth_sub))

-- 以上代码执行结果为：

-- 原始字符串    "prefix--runoobgoogletaobao--suffix"

-- 第一次截取    "fix--runoobg"

-- 第二次截取    "prefix--"

-- 第三次截取    "ao--suffix"

-- 第四次截取    "prefix--runoobgoogletaobao--suffix"