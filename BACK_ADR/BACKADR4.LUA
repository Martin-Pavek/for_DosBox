os.execute("cls")
--print()

--os.execute("dir > C:/work/dir2.txt")
os.execute("dir > C:/dir.txt")
os.execute("sleep 5")

t={}
file = io.open("C:/dir.txt", "r")
while true do
radek=(file:read())

if radek ~= nil then
--print(radek) -- musi bej tady

table.insert(t,radek)
else
break
end

end

file:close()

--print(#t)

if #t == 0 then
os.exit()
end

pwd=t[1]
--print(pwd)

t2={}
for aa = 4,#t - 2 do
hl1="<DIR>"
nal1=string.find(t[aa],hl1)

if nal1 ~= nil then
--print(nal1)
--print(t[aa])
hl2=string.find(t[aa]," ")
--print(hl2)
--print(string.sub(t[aa],1,hl2))
vloz_adresar = string.sub(t[aa],1,hl2-1)
--print(vloz_adresar)
table.insert(t2,vloz_adresar)
end

end

t=nil
if #t2 == 0 then
print("cesta neobsahuje zadne adresare")
os.execute("del C:\\dir.txt")
os.execute("sleep 10")
os.exit()
end


t3={}
for bb = 1,#t2 do

--print(t2[bb])
--cmd1="rar a -r -m5 " .. t2[bb] .. ".rar " .. t2[bb] .. "/"
cmd1="arj a -r -m4 " .. t2[bb] .. ".ARJ " .. t2[bb] .. "/"

if arg[1] == "rem" then
cmd1="REM arj a -r -m4 " .. t2[bb] .. ".ARJ " .. t2[bb] .. "/"
end

--print(cmd1)
table.insert(t3,cmd1)

--cmd2="REM arj t " .. t2[bb] .. ".ARJ"
cmd2="arj t " .. t2[bb] .. ".ARJ"

if arg[1] == "rem" then
cmd2="REM arj t " .. t2[bb] .. ".ARJ"
end

--print(cmd2)
table.insert(t3,cmd2)
end

t2=nil

file2 = io.open("_PACK.BAT", "w")
file2:write("cls")
file2:write("\n")
file2:write("@echo off")
file2:write("\n")

for cc = 1,#t3 do
file2:write(t3[cc])
file2:write("\n")
end

file2:write("@echo on")
file2:write("\n")

file2:close()
t3=nil
os.execute("del C:\\dir.txt")
print("_pack.bat")
os.execute("sleep 5")
os.exit()

--

