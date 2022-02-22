# Instalacion
Este modulo corresponde al modulo encargado de obtener la direccion ip local
<br>
Para instalar el modulo lan debes seguir los siguientes pasos <br>
<code>cd ~/.config/polybar/</code><br>
<code>mkdir scripts</code><br>
<code>cd scripts</code><br>
<code>git clone https://github.com/m4570r/lan.git</code><br>
<code>cd lan</code><br>
<code>sudo chmod +x lan</code><br>
<code>sudo chmod +x lan.sh</code><br>
<code>sudo chmod +x status</code><br>
<code>./status &</code><br>
<code>cd ..</code><br>
<code>sudo nano current.ini</code><br>
<br><br>
# MODULO en la Polybar

```
[bar/right]
inherit = bar/main
offset-x = 55.9%
offset-y = 2
width = 45%
height = 19
bottom = true
padding = 0
module-margin-left = 1
module-margin-right = 1
;background = ${color.white}
background = ${color.trans}
;foreground = ${color.blue}
foreground = #00ff15
;modules-center = web sep2 files sep2 edit sep2 apps
modules-center = lan_ico lan lan_sep
```
```
[module/lan_ico] 
type = custom/text 
content = ï – 
[module/lan] 
type = custom/script 
interval = 1 
;exec = ~/.config/polybar/scripts/lan 
exec = cd ~/.config/polybar/scripts/lan  && ./lan 
[module/lan_sep] 
type = custom/text 
content = | 
```
