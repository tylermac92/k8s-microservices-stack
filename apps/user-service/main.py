from fastapi import FastAPI
app = FastAPI()

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/users")
def hello():
    return {"message": "Hello from user-service"}