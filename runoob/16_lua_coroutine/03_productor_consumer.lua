-- 生产者-消费者问题

-- 现在我就使用Lua的协同程序来完成生产者-消费者这一经典问题。
-- 实例
local newProductor

function productor()
     local i = 0
     while true do
          i = i + 1
          send(i*2)     -- 将生产的物品发送给消费者
     end
end

function consumer()
     while true do
          local i = receive()     -- 从生产者那里得到物品
          print(i)
          if i >= 10 then
               break
          end
     end
end

function receive()
     local status, value = coroutine.resume(newProductor)
     return value
end

function send(x)
     coroutine.yield(x)     -- x表示需要发送的值，值返回以后，就挂起该协同程序
end

-- 启动程序
newProductor = coroutine.create(productor)
consumer()

-- 以上实例执行输出结果为：

-- 1
-- 2
-- 3
-- 4
-- 5
-- 6
-- 7
-- 8
-- 9
-- 10
-- 11
-- 12
-- 13
-- ……