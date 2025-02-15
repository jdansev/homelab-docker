#!/bin/bash
echo "Docker Containers and Their Ports:"
docker ps --format "table {{.Names}}\t{{.Ports}}"
