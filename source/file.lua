local a = {}
local config = gg.EXT_CACHE_DIR.. "/"..
gg.getFile():match("").. ".cfg"
local data = loadfile(config)
if data ~= nil then
a = data() data = nil end

id = "nickname"
pass = "pass"
while(true)do
a = gg.prompt({"Kullanici Adi","Sifre"},a,{"text","text"})
if a == nil then
gg.toast("Hic bir sey secmedin")
return
end

if a[3] then
gg.saveVariable(a, config)
else
os.remove(config)
end
if id == a[1] and pass == a[2] then gg.alert("Giris Basarili")
break
else if
 id ~= a[1] and pass == a[2] then gg.alert("Nickname hatalı")
else if
 id == a[1] and pass ~= a[2] then gg.alert("Pass hatalı")
else
gg.alert("Ikiside hatali")
end end end end



choice = gg.choice({"Hack/hile","Exit/cikis"})
