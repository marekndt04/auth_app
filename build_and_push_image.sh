#!/bin/bash

DOCKERHUB_USERNAME=marendt04
REPO_NAME=auth-app

TAG="$1"

docker build -f docker/cloud/Dockerfile -t "$DOCKERHUB_USERNAME/$REPO_NAME:$TAG" .

docker push "$DOCKERHUB_USERNAME/$REPO_NAME:$TAG"
