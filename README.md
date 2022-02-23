<h1>Modulo de IP</h1><br>
<h2>Instalacion Manual</h2><br>

```
sudo su
```

```
cd ~/
```

```
git clone https://github.com/m4570r/lan.git
```

```
cd lan
```

```
chmod +x lan && chmod +x lan.sh && chmod +x status && chown root status && chmod +x wan && chmod +x wan.sh && chmod +x vpn && chmod +x vpn.sh
```

```
nano vpn.sh
```

```
nano wan.sh
```

```
nano lan.sh
```

```
nano status
```

```
mkdir /home/usuario/.config/polybar/scripts/lan 
```

```
cp lan /home/usuario/.config/polybar/scripts/lan/lan 
```

```
cp wan /home/usuario/.config/polybar/scripts/lan/wan 
```

```
cp vpn /home/usuario/.config/polybar/scripts/lan/vpn 
```

<hr>
<h2>Progamar el inicio automatico del modulo</h2><br>


```
crontab -e
```

```
@reboot /root/lan/status & 

```

<hr>
<h2>Activa el modulo en la polybar</h2><br>

```
sudo nano /home/usuario/.config/polybar/current.ini
```

<h2>Desinstalacion Manual</h2><br>

```
sudo su
```

```
killall status
```

```
killall lan.sh
```

```
killall wan.sh
```

```
killall vpn.sh
```

```
rm -r /home/usuario/.config/polybar/scripts/lan
```

```
cd ~/
```

```
rm -r lan
```

<hr>
<h2>Elimina el inicio automatico</h2><br>

```
crontab -r
```
<hr>

<h2>Desactiva el modulo en la polybar</h2>

```
sudo nano /home/usuario/.config/polybar/current.ini
```
