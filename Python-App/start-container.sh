#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull pratikshaa01/python-flask-app

# Run the Docker image as a container
docker run -d -p 8000:8000 pratikshaa01/python-flask-app
