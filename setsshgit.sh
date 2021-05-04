#!/bin/bash

greenColor="\x1B[0;32m\033[1m"
redColor="\x1B[0;31m\033[1m"
blueColor="\x1B[0;34m\033[1m"
yellowColor="\x1B[0;33m\033[1m"
purpleColor="\x1B[0;35m\033[1m"
turquoiseColor="\x1B[0;36m\033[1m"
grayColor="\x1B[0;37m\033[1m"
endColor="\033[0m\x1B[0m"
#"${Color} ${endColor}"
#"${} ${enColor}"

if [[ -f $HOME/.ssh/keys/gitKey ]];then
	echo -e "${greenColor} File located.. ${endColor} "
	eval $(ssh-agent -s) 
	ssh-add $HOME/.ssh/keys/gitKey
	ssh -T git@github.com
      	bash	
else
	echo "ERROR:FILE NOT LOCATED"
fi



