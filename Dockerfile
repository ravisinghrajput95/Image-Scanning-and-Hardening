# Stage 1: Build
FROM python:3.11-slim as builder

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt || true

# Stage 2: Hardened runtime image
FROM gcr.io/distroless/python3-debian12

LABEL maintainer="Ravi Singh Rajput"
LABEL description="A hardened Python Flask app container with image scanning integration"

WORKDIR /app
COPY --from=builder /app /app

EXPOSE 8080
USER nonroot

ENTRYPOINT ["python3", "app.py"]
