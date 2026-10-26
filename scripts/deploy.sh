#!/bin/bash
# RetailHub deployment script

set -e

CONFIG_FILE="configs/app.conf"

echo "Starting RetailHub deployment..."

if [ ! -f "$CONFIG_FILE" ]; then
  echo "ERROR: $CONFIG_FILE not found"
  exit 1
fi

source "$CONFIG_FILE"

echo "App:         $APP_NAME"
echo "Version:     $APP_VERSION"
echo "Environment: $APP_ENV"
echo "Port:        $APP_PORT"

echo "Deployment complete."