<h1>Modulo de IP</h1><br>
<p>
El "Modulo de IP" consta de 7 archivos denominados scripts, la manera de operar estos archivos es a traves de <code>crontab</code> tras el inicio de sesion, este debe ejecutar el script <code>status</code>, (podemos comprobar si se esta ejecutando con el comando <code>ps -e | grep status</code>), este escript esta encargado de realizar 2 comprobaciones, la primera comprobacion es saber si hay o no hay Internet y la segunda comprobacion verifica si se esta ejecutando o no  Openvpn.
<h4>status</h4>
	
```
#!/bin/bash
usuario=
monitor(){
proceso=$(ps -e | grep openvpn | awk '{print $4}') #> /dev/null 2>&1)
IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')
if [ "$proceso" ]
then
      	#echo hay openvpn> /dev/null 2>&1;
	      bash -c "sudo killall openvpn"
        bash -c "sudo ip link delete tun0"
else
   	    echo no hay openvpn> /dev/null 2>&1
	
fi
}
for (( ; ; ))
do
clear
if ping -c1 google.com &>/dev/null; then
	echo tengo internet> /dev/null 2>&1	
	proceso2=$(ps -e | grep n.sh | awk '{print $4}') > /dev/null 2>&1;
		if $proceso2> /dev/null 2>&1;	then
			cd ~/lan && bash -c "./lan.sh &"
			cd ~/lan && bash -c "./wan.sh &"
			cd ~/lan && bash -c "./vpn.sh &"
		fi	
else 
	echo no tengo internet> /dev/null 2>&1
	monitor
	killall *n.sh> /dev/null 2>&1
	cd /home/$usuario/.config/polybar/scripts/lan
	echo	"Desconectado">lan.view
	echo	"Desconectado">wan.view
	echo	"Desconectado">vpn.view
fi
#monitor
sleep 3s
done

```
	
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
<h2>Instalacion</h2><br>

```
sudo su
```

```
cd ~/
```

```
git clone https://github.com/m4570r/lan.git
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
