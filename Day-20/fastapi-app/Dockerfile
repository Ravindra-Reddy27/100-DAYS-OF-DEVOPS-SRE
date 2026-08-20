# -------------------------
# Stage 1: Builder
# -------------------------
FROM python:3.13-slim AS builder

WORKDIR /build

COPY requirements.txt .

RUN pip install --no-cache-dir \
    --target=/install \
    -r requirements.txt


# -------------------------
# Stage 2: Production
# -------------------------
FROM gcr.io/distroless/python3

WORKDIR /app

# Copy Python packages
COPY --from=builder /install /app

# Copy application
COPY app.py .

EXPOSE 8003

CMD ["-m", "uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8003"]