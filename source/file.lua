local value = {}
local config = gg.EXT_CACHE_DIR.. "/"..
gg.getFile():match("").. ".cfg"
local data = loadfile(config)
if data ~= nil then
value = data() data = nil end

id = "nickname"
pass = "pass"
while(true)do
value = gg.prompt({"Kullanici Adi","Sifre"},value,{"text","text"})
if value == nil then
gg.toast("Hic bir sey secmedin")
return
end

if value[3] then
gg.saveVariable(value, config)
else
os.remove(config)
end
if id == value[1] and pass == value[2] then gg.alert("Giris Basarili")
break
else if
 id ~= value[1] and pass == value[2] then gg.alert("Nickname hatalı")
else if
 id == value[1] and pass ~= value[2] then gg.alert("Pass hatalı")
else
gg.alert("Ikiside hatali")
end end end end



choice = gg.choice({"Hack/hile","Exit/cikis"})
