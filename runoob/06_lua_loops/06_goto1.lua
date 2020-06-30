-- Lua 语言中的 goto 语句允许将控制流程无条件地转到被标记的语句处。

local a = 1
::label:: print("--- goto label ---")

a = a+1
if a < 3 then
    goto label   -- a 小于 3 的时候跳转到标签 label
end

-- 输出结果为：

-- --- goto label ---
-- --- goto label ---
