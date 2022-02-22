# lan
modulo lan, corresponde al modulo encargado de obtener la direccion ip local <br>
<code>cd ~/.config/polybar/</code><br>
<code>mkdir scripts</code><br>
<code>cd scripts</code><br>
<code>git clone https://github.com/m4570r/lan.git</code>
<br><br>
# MODULO en la Polybar
<code>
  [module/lan_ico]
type = custom/text
content = ï – 

[module/lan]
type = custom/script
interval = 1
;exec = ~/.config/polybar/scripts/lan 
exec = cd ~/.config/polybar/scripts/  && ./lan

[module/lan_sep]
type = custom/text
content = |
  </code>
