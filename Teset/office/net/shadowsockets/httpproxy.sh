#########################################################################
# File Name: httpproxy.sh
# Author: eric.xu
# mail: eric.xu@libratone.com.cn
# Created Time: 2017-06-19 15:56:59
#########################################################################
#!/bin/bash

if [ $# != 1 ]; then
    echo "Usage $0 start|stop"
    exit 1
fi

if [ $1 == "start" ]; then
    echo "start service polipo ..."
    sudo service polipo start
    echo "export http_proxy=http://localhost:8123"
elif [ $1 == "stop" ]; then
    echo "stop service polipo ..."
    sudo service polipo stop
    echo "unset http_proxy"
else 
    echo "Usage $0 start|stop"
fi
