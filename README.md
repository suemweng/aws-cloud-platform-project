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
