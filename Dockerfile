# Use Ubuntu official image
FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Install Python and dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    python3-full \
    git

# Copy project files
COPY requirements.txt .
COPY main.py .
COPY src/ ./src/
COPY README.md .
COPY .env .
