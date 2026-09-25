# AWS Cloud Platform Project

A progressively built cloud infrastructure project demonstrating containerization, infrastructure as code, automated deployment, observability, and production operations.

## Architecture Evolution

### v0.1.0 — Local Application

Established a minimal application baseline.

- Created a FastAPI application
- Added `/` application endpoint
- Added `/health` health-check endpoint
- Served the application locally with Uvicorn

### v0.2.0 — Containerized Application

Containerized the FastAPI application to provide a consistent and portable runtime environment.

- Added a Dockerfile using Python 3.12 slim
- Packaged application dependencies into the container image
- Added `.dockerignore` to reduce unnecessary build context
- Optimized Docker layer caching by installing dependencies before copying application source code
- Exposed the FastAPI service through Uvicorn on port 8000

**Architecture:**

Client → Host Port 8000 → Docker Container → Uvicorn → FastAPI
