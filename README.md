Python Flask Docker Application
This project is a simple Python Flask application packaged as a Docker container. It includes a Dockerfile, CI/CD configuration using AWS CodePipeline, and basic Flask application code.

Project Structure
├── Dockerfile
├── appspec.yml
├── buildspec.yml
├── requirements.txt
├── python-app.py
├── start_container.sh
└── stop_container.sh

Getting Started
Prerequisites
- Docker: Ensure Docker is installed on your machine.
- Python: Version 3.8 or 3.11 is required.
- AWS CLI: Required for CI/CD setup.

Installation
Clone the repository:
git clone <repository-url>
cd <repository-directory>

Build the Docker image:
docker build -t python-flask-app .

Run the Docker container:
docker run -p 8000:8000 python-flask-app

Usage
Open your browser and navigate to http://localhost:8000/ to see the application running. You should see the message "Hello, world!".

CI/CD Configuration
This project includes AWS CodePipeline configuration for continuous integration and deployment.

appspec.yml
Defines the deployment process, specifying hooks for stopping and starting the Docker container.

buildspec.yml
Contains build instructions for AWS CodeBuild, including installing dependencies, building the Docker image, and pushing it to the Docker registry.

Scripts
start_container.sh
This script pulls the Docker image from the Docker registry and runs it.
```bash
#!/bin/bash
set -e

echo "Starting the Docker container..."
docker run -d -p 8000:8000 python-flask-app

stop_container.sh This script stops the running Docker container.
#!/bin/bash
set -e

echo "Stopping the Docker container..."
docker stop $(docker ps -q --filter "ancestor=python-flask-app")



