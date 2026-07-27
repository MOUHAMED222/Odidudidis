FROM python:3.12-slim

WORKDIR /app

# أدوات بناء لازمة لـ TgCrypto وأي حزمة C-extension
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    python3-dev \
 && rm -rf /var/lib/apt/lists/*

COPY . .

RUN python -m pip install --upgrade pip setuptools wheel \
 && pip install --no-cache-dir -r "requirements (6).txt"

CMD ["python", "-u", "main (18).py"]
