#!/bin/bash

# Get a list of all Docker volumes
volumes=$(docker volume ls -q)

# Loop through each volume and create a tarball backup
for volume in $volumes; do
  echo "Backing up volume: $volume"

  # Run a Docker container to back up the volume into a tarball
  docker run --rm --volume $volume:/dbdata --volume $(pwd):/backup ubuntu tar cvf /backup/${volume}.tar /dbdata
done

echo "Backup completed!"
