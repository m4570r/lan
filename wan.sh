#!/bin/bash
users>usuarios
while IFS= read -r line; do usuario=$line; done < usuarios
for (( ; ; ))
do
#if ping -c1 google.com &>/dev/null; then 
echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
if [ $? -eq 0 ]; then
   dig +short myip.opendns.com @resolver1.opendns.com>/home/$usuario/.config/polybar/scripts/lan/wan.view
else
      cd /home/$usuario/.config/polybar/scripts/lan
    	echo "Desconectado">wan.view
fi
#else 	
#	echo "Desconectado">wan.view
#fi
sleep 1s
done
