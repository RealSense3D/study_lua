mytable = {"apple", "orange", "banana"}

print(collectgarbage("count"))

mytable = nil

print(collectgarbage("count"))

print(collectgarbage("collect"))

print(collectgarbage("count"))

-- 执行以上程序，输出结果如下(注意内存使用的变化)：

-- 21.2783203125
-- 21.3154296875
-- 0
-- 20.6728515625

collectgarbage("setpause", 200)
-- 内存增大 2 倍（200/100）时自动释放一次内存 （200 是默认值）。

collectgarbage("setstepmul", 200)
-- 收集器单步收集的速度相对于内存分配速度的倍率，设置 200 的倍率等于 2 倍（200/100）。（200 是默认值）