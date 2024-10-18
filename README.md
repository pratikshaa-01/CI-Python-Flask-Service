# Python Flask Docker Application

This project is a simple Python Flask application packaged as a Docker container. It includes a Dockerfile, CI/CD configuration using AWS CodePipeline, and basic Flask application code.

## Project Structure
├── Dockerfile ├── appspec.yml ├── buildspec.yml ├── requirements.txt ├── python-app.py ├── scripts │ ├── start_container.sh │ └── stop_container.sh


## Getting Started

### Prerequisites

- **Docker**: Ensure Docker is installed on your machine.
- **Python**: Version 3.8 or 3.11 is required.
- **AWS CLI**: Required for CI/CD setup.

### Installation

1. **Clone the repository**:

   ```bash
   git clone <repository-url>
   cd <repository-directory>
2. **Build the Docker image**:
   docker build -t python-flask-app .
3. **Run the Docker container**:
   docker run -p 5000:5000 python-flask-app


**Usage**
Open your browser and navigate to http://localhost:5000/ to see the application running. You should see the message "Hello, world!".


**CI/CD Configuration**
This project includes AWS CodePipeline configuration for continuous integration and deployment.

appspec.yml
Defines the deployment process, specifying hooks for stopping and starting the Docker container.

buildspec.yml
Contains build instructions for AWS CodeBuild, including installing dependencies, building the Docker image, and pushing it to the Docker registry.


**Scripts**
start_container.sh
This script pulls the Docker image from the Docker registry and runs it.

stop_container.sh
This script stops the running Docker container.


**Dockerfile**
**requirements.txt**
**python-app.py**


