tools = {"realmi", "none", "banana","orange","apple"}

t = table.pack("realmi", "none", "banana","orange","apple")

for k,v in pairs(t) do
    print(k,v)
end

print('(1):',table.unpack(t))

print("=====================================")


t = {"Lua", "C++", "Python", "Java"}
print('(1):\n',t)
print('(2):',table.unpack(t))
a, b, c, d = table.unpack(t)
print('(3):',b)
print('(4):',a, b, c, d)
print('(5):',table.unpack(t, 2))
print('(6):',table.unpack(t, 2, 3))
