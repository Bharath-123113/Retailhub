#!/bin/bash
# RetailHub health check

CONFIG_FILE="configs/app.conf"

if [ ! -f "$CONFIG_FILE" ]; then
  echo "FAIL: $CONFIG_FILE not found"
  exit 1
fi

source "$CONFIG_FILE"

for var in APP_NAME APP_VERSION APP_ENV APP_PORT; do
  if [ -z "${!var}" ]; then
    echo "FAIL: $var is not set"
    exit 1
  fi
  echo "OK: $var=${!var}"
done

echo "Health check passed."
