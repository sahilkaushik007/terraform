#!/bin/bash

# Set the ACR details
ACR_NAME="jenkinsnew007"
ACR_REGISTRY="jenkinsnew007.azurecr.io"
REPOSITORY_NAME="jenkinsnew007"

# Get the latest serial number from a file
CURRENT_SERIAL=$(cat serial.txt)
NEXT_SERIAL=$((CURRENT_SERIAL + 1))

# Build the Docker image
TAG="v$NEXT_SERIAL"
docker build -t $ACR_REGISTRY/$REPOSITORY_NAME:$TAG .

# Log in to the Azure Container Registry
az acr login --name $ACR_NAME

# Tag the Docker image with ACR login server and repository
ACR_LOGIN_SERVER=$(az acr show --name $ACR_NAME --query "loginServer" --output tsv)
docker tag $ACR_REGISTRY/$REPOSITORY_NAME:$TAG $ACR_LOGIN_SERVER/$REPOSITORY_NAME:$TAG

# Push the Docker image to the ACR repository
docker push $ACR_LOGIN_SERVER/$REPOSITORY_NAME:$TAG

# Update the serial number in the file
echo $NEXT_SERIAL > serial.txt
