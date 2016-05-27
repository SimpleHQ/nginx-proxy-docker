#!/usr/bin/env sh

export REPLACE_VARS='$PORT:$APP_SERVER'

envsubst "$REPLACE_VARS" < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec nginx -g 'daemon off;'
