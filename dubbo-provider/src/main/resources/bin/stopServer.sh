#!/bin/sh
#
# stop portalgis-resserver service
#
###EOF 

prog=portalgis-resserver

pid=`ps -ef|grep $prog | grep java | grep -v grep|awk '{print $2}'`
if [ ! "$pid" ];then
  echo "$prog is not running"
else
  echo -e "stop $prog : $pid"
  kill -9 $pid
fi

exit 0

