# Install
<br>
<code>sudo su</code><br>
<code>cd ~/</code><br>

```
git clone https://github.com/m4570r/lan.git

```

<code>cd lan</code><br>


```
chmod +x lan && chmod +x lan.sh && chmod +x status && chown root status
```

<code>nano lan.sh</code><br>
<code>nano status</code><br>
<code>mkdir /home/usuario/.config/polybar/scripts/lan </code><br>
<code>cp lan /home/usuario/.config/polybar/scripts/lan/lan </code><br>
<hr>
<code>crontab -e</code><br>


```
@reboot /root/lan/status & 

```

<hr>
<br>
<code>sudo nano /home/usuario/.config/polybar/current.ini</code><br>
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
