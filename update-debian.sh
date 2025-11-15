#!/bin/bash

SERVER=$1
DATE=$(date +%Y%m%d%H%M)

USAGE="echo Usage: $0 <server>. Enter server to update."

if [ $# != 1 ]; then
	echo -e ""
	$USAGE
	exit 3
fi

echo "Updating $SERVER"
echo
ssh -t $SERVER "sudo -S apt-get -y upgrade | tee $SERVER-update$DATE" | tee $SERVER-update$DATE
