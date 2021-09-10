#!/bin/bash

SCRIPTDIR=`cd $(dirname $0) && pwd`

if [ -r "$SCRIPTDIR/setup.sh" ]; then
    . "$SCRIPTDIR/setup.sh"
fi

if ! [ x"$OWCALENDAR" = xproduction ]; then
    EXTRA_ARGS="-e CACHE_REQUESTED_URLS_FOR_SECONDS=10"
else
    EXTRA_ARGS="-e CACHE_REQUESTED_URLS_FOR_SECONDS=60 -e APP_DEBUG=false"
fi

gunicorn -b "0.0.0.0:23232" app:app $EXTRA_ARGS
