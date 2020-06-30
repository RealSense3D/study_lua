-- require 函数

-- Lua提供了一个名为require的函数用来加载模块。要加载一个模块，只需要简单地调用就可以了。例如：

-- require("<模块名>")

-- 或者

-- require "<模块名>"

-- 执行 require 后会返回一个由模块常量或函数组成的 table，并且还会定义一个包含该 table 的全局变量。
-- test_module.lua 文件
-- test_module.lua 文件
-- module 模块为上文提到到 module.lua
local p = "D:\\Projects\\study_lua\\runoob\\14_lua_modules_packages\\"
local m_package_path = package.path
package.path = string.format("%s?.lua;%s?/init.lua;%s", p, p, m_package_path)

require("module")
 
print(module.constant)
 
module.func3()

-- 以上代码执行结果为：
-- This is a constant
-- This is a private function

-- 或者给加载的模块定义一个别名变量，方便调用：
-- test_module2.lua 文件
-- test_module2.lua 文件
-- module 模块为上文提到到 module.lua
-- 别名变量 m

print("======================")
local m = require("module")
 
print(m.constant)
 
m.func3()

-- 以上代码执行结果为：

-- ======================
-- This is a constant
-- This is a private function