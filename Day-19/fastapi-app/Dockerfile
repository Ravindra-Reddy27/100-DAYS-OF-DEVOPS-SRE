# ### Without Multi-Stage Builds

# FROM python:3.12

# WORKDIR /app

# COPY requirements.txt .

# RUN pip install --no-cache-dir -r requirements.txt

# COPY app.py .

# EXPOSE 8003

# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8003"]



### With Multi-Stage Builds

# Stage 1: Builder
FROM python:3.12 AS builder

WORKDIR /build

COPY requirements.txt .

RUN pip install --no-cache-dir \
    --prefix=/install \
    -r requirements.txt


# Stage 2: Runtime
FROM python:3.12-slim

WORKDIR /app

# Copy only installed Python packages
COPY --from=builder /install /usr/local

# Copy application
COPY app.py  .

EXPOSE 8003

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8003"]