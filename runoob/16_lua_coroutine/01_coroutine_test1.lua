-- 方法	描述
-- coroutine.create()	创建 coroutine，返回 coroutine， 参数是一个函数，当和 resume 配合使用的时候就唤醒函数调用
-- coroutine.resume()	重启 coroutine，和 create 配合使用
-- coroutine.yield()	挂起 coroutine，将 coroutine 设置为挂起状态，这个和 resume 配合使用能有很多有用的效果
-- coroutine.status()	查看 coroutine 的状态
-- 注：coroutine 的状态有三种：dead，suspended，running，具体什么时候有这样的状态请参考下面的程序
-- coroutine.wrap（）	创建 coroutine，返回一个函数，一旦你调用这个函数，就进入 coroutine，和 create 功能重复
-- coroutine.running()	返回正在跑的 coroutine，一个 coroutine 就是一个线程，当使用running的时候，就是返回一个 corouting 的线程号

-- 以下实例演示了以上各个方法的用法：
-- coroutine_test.lua 文件
-- coroutine_test.lua 文件
co = coroutine.create(
    function(i)
        print(i);
    end
)
 
coroutine.resume(co, 1)   -- 1
print(coroutine.status(co))  -- dead
 
print("----------")
 
co = coroutine.wrap(
    function(i)
        print("->"..i);
    end
)
 
co(1)

print("----------")
 
co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield()
        end
    end
)
 
coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3
coroutine.resume(co2) --4
 
print(coroutine.status(co2))   -- suspended
print(coroutine.running())
 
print("----------")

-- 以上实例执行输出结果为：

-- 1
-- dead
-- ----------
-- ->1
-- ----------
-- 1
-- 2
-- 3
-- running
-- thread: 0000000000731bc8	false
-- 4
-- suspended
-- thread: 0000000000731568	true
-- ----------

-- coroutine.running就可以看出来,coroutine在底层实现就是一个线程。

-- 当create一个coroutine的时候就是在新线程中注册了一个事件。

-- 当使用resume触发事件的时候，create的coroutine函数就被执行了，当遇到yield的时候就代表挂起当前线程，等候再次resume触发事件。 