#!/bin/sh
exe=/volume1/homes/USER/frp/frpc
cfg=/volume1/homes/USER/frp/frpc.ini
log=/volume1/homes/USER/frp/log

nohup $exe -c $cfg -L $log >/dev/null 2>&1 &
