#!/bin/sh

CUR_VER=$(find device/acer/salsa/prebuilt/ -name "GooManager_*")

if [[ $CUR_VER == "" ]];then
	CUR_VER="null"
fi

AVA_VER=$(curl -s http://goo.im/devs/s0updev/gooinsideme | grep ".apk" | grep href | awk -F"href=" '{print $2}' | cut -d'>' -f1 | tail -n1 | awk -F"'" '{print $2}')

if [[ $(basename $AVA_VER) != $(basename $CUR_VER) ]]; then
	echo -e "     [DOWNLOADING]\n"
	curl -L $AVA_VER -o "device/acer/salsa/prebuilt/"$(basename $AVA_VER)
	if [ -f $CUR_VER ];then	
		rm $CUR_VER
	fi
	cp -f "device/acer/salsa/prebuilt/"$(basename $AVA_VER) "device/acer/salsa/prebuilt/GooManager.apk"
	echo ""
else
echo -e "     [UPDATED]\n"
fi
