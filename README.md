<h1>Modulo de IP</h1><br>
<p>
El "Modulo de IP" consta de 7 archivos denominados scripts, la manera de operar estos archivos es a traves de <code>crontab</code> tras el inicio de sesion, este debe ejecutar el script <code>status</code>, (podemos comprobar si se esta ejecutando con el comando <code>ps -e | grep status</code>), este escript esta encargado de realizar 2 comprobaciones, la primera comprobacion es saber si hay o no hay Internet y la segunda comprobacion verifica si se esta ejecutando o no  Openvpn.
  <ul>
  <li>status</li>
  <li>lan</li>
  <li>wan</li>
  <li>vpn</li>
  <li>lan.sh</li>
  <li>wan.sh</li>
  <li>vpn.sh</li>
  </ul>
  estos scripts se ejecutan para obtener las direcciones IP (local-publica-VPN).
</p>
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
