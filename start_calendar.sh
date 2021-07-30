#!/bin/bash
. .env/bin/activate

gunicorn -b "0.0.0.0:23232" app:app -e CACHE_REQUESTED_URLS_FOR_SECONDS=10
