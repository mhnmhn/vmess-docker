#!/bin/sh
/bin/sed -i "s/\$PORT/$PORT/g" /etc/v2ray/config.json
/bin/sed -i "s/\$UUID/$UUID/g" /etc/v2ray/config.json
/bin/sed -i "s/\$WS_PATH/$WS_PATH/g" /etc/v2ray/config.json
cat /etc/v2ray/config.json
# envsubst $VARS < /etc/v2ray/config.json.var > /etc/v2ray/config.json
exec "$@"