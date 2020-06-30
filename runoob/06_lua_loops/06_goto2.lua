-- 可以在 lable 中设置多个语句
i = 0
::s1:: do
  print(i)
  i = i+1
end
if i>3 then
  os.exit()   -- i 大于 3 时退出
end
goto s1

-- 输出结果为：

-- 0
-- 1
-- 2
-- 3
