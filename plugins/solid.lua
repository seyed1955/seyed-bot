do

function run(msg, matches)
local reply_id = msg['id']
local text = 'بلی؟'
--در اینجا میتونین جواب رو تعیین کنید
if matches[1] == 'امیر' or 'amir' or 'alfro' or 'amir ''afroshotak'then
    if not is_sudo(msg) then
--در این قسمت میتونید اسم خودتون رو بزارید
--یادتون باشه وقتی اسم خودتون رو گذاشتید پترن هارو هم تغییر بدید
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^امیر$",
    "^amir$",
"^([Aa]lfro)$",
"^([Aa]mir)$",
"^([Aa]lfroshotak)$"
},
run = run
}

end
