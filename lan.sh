#!/bin/bash
for (( ; ; ))
do
#if ping -c1 google.com &>/dev/null; then  
  	echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
		if [ $? -eq 0 ]; then
			#Debes reemplazar el <usuario> por tu usuario, para saber cual es tu usuario usa el comando whoami luego reemplaza la ruta despues de home
    			ip -o addr show up primary scope global | while read -r num dev fam addr rest; do echo ${addr%/*}; done>/home/usuario/.config/polybar/scripts/lan/lan.view
		else
			#Aqui debes hacer lo mismo que la vez anterior debes cambiar tu usuario por tu usuario
    			cd /home/usuario/.config/polybar/scripts/lan
			echo "Desconectado">lan.view
		fi
#else 
#	echo 'Desconectado'>~/lan/lan.view
#fi
sleep 1s
done
