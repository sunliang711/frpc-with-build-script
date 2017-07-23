#!/bin/sh
exe=xxx/frpc
cfg=xxx/frpc.ini

nohup $exe -c $cfg >/dev/null 2>&1 &
