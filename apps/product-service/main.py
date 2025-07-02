from fastapi import FastAPI
app = FastAPI()

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/products")
def hello():
    return {"message": "Hello from product-service"}