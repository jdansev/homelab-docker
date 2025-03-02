#!/bin/bash

# Define the base directory where all docker services are stored
BASE_DIR="./.."

# Check if the user provided an action argument
if [ -z "$1" ]; then
  echo "❌ Usage: $0 {start|stop|restart}"
  exit 1
fi

ACTION=$1

case "$ACTION" in
  start)
    echo "🚀 Starting all Docker services..."
    COMMAND="up -d"
    ;;
  stop)
    echo "🛑 Stopping all Docker services..."
    COMMAND="down"
    ;;
  restart)
    echo "🔄 Restarting all Docker services..."
    for dir in "$BASE_DIR"/*/; do
      if [ -f "$dir/docker-compose.yml" ]; then
        echo "⏹️ Stopping service in: $dir"
        (cd "$dir" && docker compose --env-file ./../.env down)
      fi
    done
    echo "✅ All services stopped. Now starting them again..."
    COMMAND="up -d"
    ;;
  *)
    echo "❌ Invalid option. Use: $0 {start|stop|restart}"
    exit 1
    ;;
esac

# Loop through each service directory containing a docker-compose.yml
for dir in "$BASE_DIR"/*/; do
  if [ -f "$dir/docker-compose.yml" ]; then
    echo "▶️ Processing service in: $dir"
    (cd "$dir" && docker compose --env-file ./../.env $COMMAND)

    # Check if the command executed successfully
    if [ $? -eq 0 ]; then
      echo "✅ Service in $dir processed successfully."
    else
      echo "❌ Failed to process service in $dir."
    fi
  else
    echo "⚠️ No docker-compose.yml found in $dir, skipping..."
  fi
done

echo "🎉 Operation '$ACTION' completed!"
