#include <stdio.h>
#include <stdlib.h>
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"
#pragma comment(lib, "lua5.4.lib")
// lua解释器指针
lua_State* L;

#if 1
// C执行lua脚本
/************************************************************************
1、lua_open()返回一个指向Lua解释器的一个指针。
2、luaL_openlibs()用于装载Lua库，它提供了一些简单的函数，如：print。
3、通过调用luaL_dofile()执行脚本。它的作用是读取并解释脚本。
4、最后，通过lua_close()函数关闭Lua。
************************************************************************/
int main() {
   L = luaL_newstate();// 打开lua
   luaL_openlibs(L);

   if(luaL_loadfile(L, "test.lua") || lua_pcall(L, 0,0,0)){
      printf("error %s\n", lua_tostring(L,-1));
      return -1;
   }
   lua_getglobal(L,"width");
   lua_getglobal(L,"length");
   printf("width = %lld\n", lua_tointeger(L,-2));
   printf("length = %lld\n", lua_tointeger(L,-1));
   lua_close(L);
   return 0;
}
#endif
#if 0
// C执行lua脚本
/************************************************************************
1、lua_open()返回一个指向Lua解释器的一个指针。
2、luaL_openlibs()用于装载Lua库，它提供了一些简单的函数，如：print。
3、通过调用luaL_dofile()执行脚本。它的作用是读取并解释脚本。
4、最后，通过lua_close()函数关闭Lua。
************************************************************************/
int main(int argc, char **argv)
{
   int sum = 0;
   L = luaL_newstate();// 打开lua
   luaL_openlibs(L);// 打开lua库
   luaL_dofile(L, "test.lua");// 执行lua脚本

   lua_getglobal(L, "add");// 根据函数名获得Lua中的函数
   lua_pushnumber(L, 132);// 参数一入栈
   lua_pushnumber(L, 1000);// 参数一入栈
   lua_call(L, 2, 1);// 调用lua中的lua_average函数，连个输入参数，一个返回值
   sum = (int)lua_tointeger(L, -1);//获得返回值
   lua_pop(L, 1);// 将返回值出栈，恢复栈中的元素

   printf("Sum = %d\n", sum);
   lua_close(L);// 关闭lua
   return 0;
}
#endif
#if 0
// C 调用Lua函数
/************************************************************************
1、调用lua_getglobal()将average()函数压入栈中。
2、调用lua_pushnumber()将第一个参数x压入栈中。
3、同样，调用lua_pushnumber()将第二个参数y压入栈中。
4、调用lua_call()，其参数的意思是两个参数，一个返回值。
5、现在，我们可以利用lua_tointeger()获得整型返回值。
6、最后，调用lua_pop()将值从栈中移出。
************************************************************************/
int lua_average(int arr[],int a)
{
   int sum;
   int data;
   int i =0;
   lua_getglobal(L, "lua_average");// 根据函数名获得Lua中的函数
   for (i;i<a;i++)
      lua_pushnumber(L, arr[i]);// 参数一入栈
   lua_pushnumber(L, a);//注意数组要传送一个长度的一个隐含参数
   lua_call(L, a+1, 1);// 调用lua中的lua_average函数，连个输入参数，一个返回值
   sum = (int)lua_tointeger(L, -1);//获得返回值
   lua_pop(L, 1);// 将返回值出栈，恢复栈中的元素
   return sum;
}

int main(int argc, char **argv)
{
 int sum;
 int  arr[]={1,2,3,4,5,6,7,8,9};
 L = luaL_newstate();// 打开lua
 luaL_openlibs(L);// 打开lua库
 luaL_dofile(L, "test.lua");// 加载lua脚本
 sum = lua_average(arr,9);// 调用lua中的函数
 printf("Result is: %d.\n", sum);
 lua_close(L);// 关闭lua
 return 0;
}
#endif

#if 0
// lua调用C的函数
/************************************************************************
1、lua_gettop函数返回栈顶的索引值。因为在Lua中栈是从1开始编号的，因此该函
   数获得的值就是参数的个数。
2、在for循环中计算所有参数之和。
3、调用lua_pushnumber()将参数的平均值压栈。
4、将参数之和压入栈中。
5、最后，函数返回2，说明有两个返回值在栈中。
************************************************************************/

static int c_average(lua_State *L)
{
 int n = lua_gettop(L);// 取得栈顶的元素参数个数
 double sum = 0;
 int i;
 // 循环求取参数的和
 for (i = 1; i <= n; i++)
 {
  if (!lua_isnumber(L, i))
  {
   lua_pushstring(L, "Incorrect argument to 'average'");
   lua_error(L);
  }
  else
  {
   sum += lua_tonumber(L, i);
  }
 }
 lua_pushnumber(L, sum/n);// 将平均数压入栈顶
 lua_pushnumber(L, sum);// 将和压入栈中
 return 2;// 返回压入栈中参数的个数
}
int main(int argc, char **argv)
{
 int sum;
 L = luaL_newstate();// 打开lua
 luaL_openlibs(L);// 打开lua库
 lua_register(L, "average", c_average);// 注册lua基本库，绑定之
 luaL_dofile(L, "test.lua");// 加载lua脚本
 lua_close(L);// 关闭lua
 system("uname -a");
 return 0;
}
#endif