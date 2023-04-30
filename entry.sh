#!/bin/sh
/bin/sed -i "s/\$PORT/$PORT/g" /etc/xray/config.json
/bin/sed -i "s/\$UUID/$UUID/g" /etc/xray/config.json
/bin/sed -i "s/\$WS_PATH/$WS_PATH/g" /etc/xray/config.json
cat /etc/xray/config.json
exec "$@"