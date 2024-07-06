#!/bin/bash
read -p "Enter the Tag in Image : " Tag
sed -i -e 's/react:[^ ]*/'$Tag'/g' docker-compose.yaml
docker compose up -d
# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Docker deployed  successfully."
else
    echo "Failed to deploy the Docker"
    exit 1
fi
