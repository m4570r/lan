# Install
Este modulo corresponde al modulo encargado de obtener la direccion ip local
<br>
Para instalar el modulo lan debes seguir los siguientes pasos <br>
<code>cd ~/.config/polybar/</code><br>
<code>mkdir scripts</code><br>
<code>cd scripts</code><br>

```
git clone https://github.com/m4570r/lan.git

```
<code>cd lan</code><br>

```
sudo chmod +x lan && sudo chmod +x lan.sh && sudo chmod +x status && chown root status
```

<br>para probar el comando puedes usar esta linea <br>
<code>./status &</code><br>
<hr>
pero si tu intencion es dejar permanentemente el modulo activado debes lanzarlo al inicio con un crontab de la siguiente forma.<br>
<code>crontab -e</code><br>

```
@reboot ~/.config/polybar/scripts/lan/status & 

```
<hr>
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
