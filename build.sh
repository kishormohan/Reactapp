#!/bin/bash
IMAGE_NAME=react
TAG=v2.0
DOCKERFILE_PATH="."
echo "Building Docker image..."
docker build -t ${IMAGE_NAME}:${TAG} ${DOCKERFILE_PATH}
# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Docker image ${IMAGE_NAME}:${TAG} built successfully."
else
    echo "Failed to build Docker image ${IMAGE_NAME}:${TAG}."
    exit 1
fi
