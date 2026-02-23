from fastapi import FastAPI

app = FastAPI()


@app.get("/info")
def get_info():
    return {"app": "pulseboard-api", "version": "1.0.0"}
