#!/bin/bash
users>usuarios ; while IFS= read -r line; do usuario=$line; done < usuarios
for (( ; ; ))
do
IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')
if [ "$IFACE" = "tun0" ]; then
    	echo "$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')">/home/$usuario/.config/polybar/scripts/lan/vpn.view
else
      cd /home/$usuario/.config/polybar/scripts/lan
      echo "Desconectado">vpn.view
fi
sleep 1s
done
