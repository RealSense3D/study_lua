--C dofile
print ("hello world");


-- Para
width = 10
height = 20
length = 30


--Be called by C
function add(x, y)
    return x + y;
end

--Be called by C
function table_leng(t)
    local leng=0
    for k, v in pairs(t) do
      leng=leng+1
    end
    return leng;
end

function lua_average(...)
    local arg={...}    --> arg 为一个表，局部变量
    local sum = 0;
    local len = arg[table_leng(arg)]
    print("len = " .. len)
    table.remove( arg)
    for i,j in pairs(arg) do
        print(j)
        sum = sum + j;
    end
    print(table_leng(arg))
    return sum/table_leng(arg);
end
--call C function
-- avg, sum = average(23,56,46,24,65,75,34,12);
-- print("The average is : ", avg);
-- print("The sum is : ", sum);

print(_VERSION)