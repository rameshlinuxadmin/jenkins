# Jenkins Docker CI/CD Pipeline

This project demonstrates a fully automated CI/CD pipeline using Jenkins and Docker. The pipeline automates source code checkout, file transfer, old container removal, Docker image builds, and container deployment to a remote server—enabling fast, reliable software delivery.

## Features

- Declarative Jenkins pipeline (Groovy syntax)
- Seamless steps:
  - Source code checkout (SCM)
  - Copying files from GitHub to remote Docker host
  - Cleaning up prior Docker containers before deployment
  - Docker image building
  - New container deployment with auto health check
- Detailed stage views and timing metrics

## Pipeline Workflow

1. **Declarative Checkout SCM:** Checks out the source code to the build workspace.
2. **Copy the Required Files:** Uses `rsync` to transfer the necessary Dockerfile to the remote Docker host.
3. **Remove Old Container:** Prunes any running containers to avoid conflicts.
4. **Build Docker Image:** Remotely builds the Docker image and tags it properly.
5. **Deploy as Container:** Runs the new Docker container and checks if it's running properly.

## Usage

1. Clone this repository:
    ```
    git clone https://github.com/rameshlinuxadmin/jenkins.git
    ```
2. Configure Jenkins agents and SSH credentials for the remote host (`172.25.x.x`).
3. Import your pipeline script (`Jenkinsfile`) into a Jenkins project.
4. Trigger builds manually or automatically via GitHub webhook.

## Requirements

- Jenkins server with Pipeline plugin enabled
- A remote machine with Docker installed and accessible via SSH
- Source code repository containing your application and Dockerfile

## License

MIT License

For more, visit the [project repository](https://github.com/rameshlinuxadmin/jenkins).
