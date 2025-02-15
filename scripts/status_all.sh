#!/bin/bash

# Define the base directory where all docker services are stored
BASE_DIR="./.."

echo "Checking status of all Docker services..."

# Loop through each service directory containing a docker-compose.yml
for dir in "$BASE_DIR"/*/; do
  SERVICE_NAME=$(basename "$dir")

  if [ -f "$dir/docker-compose.yml" ]; then
    CONTAINER_IDS=$(docker compose --env-file ../.env -f "$dir/docker-compose.yml" ps -q)

    if [ -n "$CONTAINER_IDS" ]; then
      for CONTAINER_ID in $CONTAINER_IDS; do
        STATUS=$(docker inspect -f '{{.State.Status}}' "$CONTAINER_ID" 2>/dev/null)
        SHORT_ID="${CONTAINER_ID:0:8}"
        if [ "$STATUS" == "running" ]; then
          echo "✅ $SERVICE_NAME ($SHORT_ID) is RUNNING"
        else
          echo "⚠️  $SERVICE_NAME ($SHORT_ID) is NOT RUNNING (Status: $STATUS)"
        fi
      done
    else
      echo "❌ $SERVICE_NAME is NOT RUNNING (No container found)"
    fi
  fi
done

echo "Status check completed!"
