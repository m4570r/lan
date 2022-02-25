#!/bin/bash
while IFS= read -r line; do usuario=$line; done < usuarios
for (( ; ; ))
do  
  	echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
		if [ $? -eq 0 ]; then
    			ip -o addr show up primary scope global | while read -r num dev fam addr rest; do echo ${addr%/*}; done>/home/$usuario/.config/polybar/scripts/lan/lan.view
		else
    			cd /home/$usuario/.config/polybar/scripts/lan
			echo "Desconectado">lan.view
		fi
sleep 1s
done
