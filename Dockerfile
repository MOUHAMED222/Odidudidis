FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r "requirements (6).txt"

CMD ["python", "main (18).py"]
