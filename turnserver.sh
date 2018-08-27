#!/bin/bash

if [ -z $PORT ]
then
    PORT=3478
fi

if [ -z $REALM ]
then
    REALM=koori69
fi

if [ -z $USER ]
then
    USER=koori69:koori69
fi


echo log-file=/var/tmp/turn.log > /etc/turnserver/turnserver.conf
echo pidfile="var/run/turnserver/turnserver.pid" >> /etc/turnserver/turnserver.conf
echo no-stdout-log >> /etc/turnserver/turnserver.conf
echo realm=$REALM >> /etcturnserver//turnserver.conf
echo user=$USER >> /etc/turnserver/turnserver.conf
echo external-ip=$EXTERNAL_IP >> /etc/turnserver/turnserver.conf
echo listening-port=$PORT >> /etc/turnserver/turnserver.conf

turnserver -v -r $EXTERNAL_IP -a  -c /etc/turnserver/turnserver.conf 
