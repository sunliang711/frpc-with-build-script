#!/bin/sh
if [ -z "$1" ];then
    echo "Usage: $0 user"
    exit 1
fi

sed -i "s/USER/$1/" frpc-boot.sh
sed -i "s/USER/$1/" frpc.sh

cp frpc.sh /usr/local/bin/
cp frpc-boot.sh /usr/local/etc/rc.d/
