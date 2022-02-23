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
chmod +x lan && chmod +x lan.sh && chmod +x status && chown root status
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
