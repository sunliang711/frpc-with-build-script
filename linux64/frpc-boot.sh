#!/bin/sh
exe=/volume1/homes/USER/frp/frpc
cfg=/volume1/homes/USER/frp/frpc.ini

nohup $exe -c $cfg >/dev/null 2>&1 &
