# Manual Install

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

<hr>

```
crontab -e
```

```
@reboot /root/lan/status & 

```

<hr>

```
sudo nano /home/usuario/.config/polybar/current.ini
```

