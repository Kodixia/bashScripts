#!/bin/bash

if [[ -f $HOME/.ssh/keys/gitkey ]]
then
	echo "File located.."
	eval $(ssh-agent -s)
	ssh-add $HOME/.ssh/keys/gitkey
	ssh -T git@github.com
      	bash	
else
	echo "ERROR:FILE NOT LOCATED"
fi



