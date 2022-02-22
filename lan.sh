#!/bin/bash
for (( ; ; ))
do
#if ping -c1 google.com &>/dev/null; then  
  	echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
		if [ $? -eq 0 ]; then
    			ip -o addr show up primary scope global | while read -r num dev fam addr rest; do echo ${addr%/*}; done>lan.view
		else
    			echo "Desconectado">lan.view
		fi
#else 
#	echo 'Desconectado'>lan.view
#fi
sleep 1s
done
