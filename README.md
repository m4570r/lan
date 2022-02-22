# lan
modulo lan, corresponde al modulo encargado de obtener la direccion ip local <br>
<code>cd ~/.config/polybar/</code><br>
<code>mkdir scripts</code><br>
<code>cd scripts</code><br>
<code>git clone https://github.com/m4570r/lan.git</code>
<br><br>
# MODULO en la Polybar
<code>
[module/lan_ico] /n
type = custom/text /n
content = ï – /n
[module/lan] /n
type = custom/script /n
interval = 1 /n
;exec = ~/.config/polybar/scripts/lan /n 
exec = cd ~/.config/polybar/scripts/  && ./lan /n
[module/lan_sep] /n
type = custom/text /n
content = | /n
</code>
