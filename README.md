# AWS Cloud Platform Project

A progressively built cloud infrastructure project demonstrating containerization, infrastructure as code, automated deployment, observability, and production operations.

## Architecture Evolution

### v0.1.0 — Local Application

Established a minimal application baseline.

- Created a FastAPI application
- Added `/` application endpoint
- Added `/health` health-check endpoint
- Served the application locally with Uvicorn

**Architecture:**

Client → Uvicorn → FastAPI

### v0.2.0 — Containerized Application

Containerized the FastAPI application to provide a consistent and portable runtime environment.

- Added a Dockerfile using Python 3.12 slim
- Packaged application dependencies into the container image
- Added `.dockerignore` to reduce unnecessary build context
- Optimized Docker layer caching by installing dependencies before copying application source code
- Exposed the FastAPI service through Uvicorn on port 8000

**Architecture:**

Client → Host Port → Docker → Uvicorn → FastAPI

### v0.3.0 — Private Container Registry

Published the containerized application to Amazon ECR with least-privilege IAM access.

- Created a private Amazon ECR repository for application images
- Configured a dedicated IAM identity for local development
- Implemented least-privilege ECR permissions for repository access and image publishing
- Authenticated Docker with Amazon ECR using AWS CLI credentials
- Tagged and pushed the application image to the private registry
- Verified the published image using its SHA-256 digest

**Architecture:**

Local Development → Docker Image → Amazon ECR Private Registry
