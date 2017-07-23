#!/bin/sh
#this file must in one of $PATH

exe=xxx/frpc
cfg=xxx/frpc.ini

start(){
        nohup $exe -c $cfg >/dev/null 2>&1 &
}

stop(){
        pid=$(ps | grep 'frpc -c' | grep -v grep | awk '{print $1}')
        if [ ! -z "$pid" ];then
            kill $pid
        fi
}

status(){
        pid=$(ps | grep 'frpc -c' | grep -v grep | awk '{print $1}')
        if [  -z "$pid" ];then
                echo "frpc is not running!"
        else
                echo "frpc is running with pid $pid"
        fi

}

case $1 in
        start)
                start
                ;;
        stop)
                stop
                ;;
        restart)
                stop
                start
                ;;
        config)
                vi $cfg
                ;;
        status)
                status
                ;;
        *)
                echo "Usage: frpc.sh start|stop|restart|config|status"
                ;;
esac
