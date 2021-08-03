#!/bin/sh

SERVICE=openwebcalendar

if systemctl is-enabled $SERVICE.service >/dev/null 2>&1; then
    systemctl disable $SERVICE.service
fi

rm -f /etc/systemd/system/$SERVICE.service
systemctl daemon-reload
