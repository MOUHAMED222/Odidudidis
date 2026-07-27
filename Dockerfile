FROM python:3.12-slim

WORKDIR /app

# أدوات بناء لازمة لـ TgCrypto وأي حزمة C-extension
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    python3-dev \
    docker.io \          # <--- إضافة Docker
 && rm -rf /var/lib/apt/lists/*

COPY . .

# تثبيت متطلبات البوت الأساسية
RUN python -m pip install --upgrade pip setuptools wheel \
 && pip install --no-cache-dir -r "requirements (6).txt"

# تثبيت مكتبة docker-py للتحكم في Docker من داخل البوت
RUN pip install docker

CMD ["python", "-u", "main.py"]
