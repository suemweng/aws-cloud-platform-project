from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return{"message": "AWS Cloud Platform Project"}

@app.get("/health")
def health():
    return{"status": "healthy"}
