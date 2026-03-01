from fastapi import FastAPI

app = FastAPI()


@app.get("/health")
def health_check():
    return {"status": "healthy"}


@app.get("/info")
def info():
    return {
        "name": "pulseboard-api",
        "version": "0.1.0",
    }
