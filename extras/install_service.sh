#!/bin/sh

set -e

SERVICE=openwebcalendar
PREFIX=`cd $(dirname $0)/.. && pwd`

if ! [ -d "$PREFIX" ]; then
    echo "Could not determine prefix, got '$PREFIX'"
    exit 1
fi

sed "s,__PREFIX__,$PREFIX,g" $SERVICE.service > /etc/systemd/system/$SERVICE.service
systemctl daemon-reload
if ! systemctl is-enabled $SERVICE.service >/dev/null 2>&1; then
    systemctl enable $SERVICE.service
fi
