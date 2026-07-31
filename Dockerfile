FROM python:3.12-slim

WORKDIR /app

# تثبيت أدوات النظام
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    g++ \
    make \
    python3-dev \
    docker.io \
    git \
    curl \
    wget \
    unzip \
    zip \
    ffmpeg \
    libffi-dev \
    libssl-dev \
    libjpeg-dev \
    zlib1g-dev \
    libxml2-dev \
    libxslt1-dev \
    libpq-dev \
    libsqlite3-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# نسخ المشروع
COPY . .

# تحديث pip
RUN python -m pip install --upgrade pip setuptools wheel

# تثبيت متطلبات المشروع
RUN if [ -f "requirements (6).txt" ]; then \
    pip install --no-cache-dir -r "requirements (6).txt"; \
    fi

# تثبيت أغلب المكتبات المشهورة
RUN pip install --no-cache-dir \
    pyTelegramBotAPI \
    telebot \
    aiogram \
    telethon \
    pyrogram \
    TgCrypto \
    python-telegram-bot \
    requests \
    httpx \
    aiohttp \
    aiofiles \
    aiosqlite \
    websockets \
    websocket-client \
    urllib3 \
    certifi \
    idna \
    charset-normalizer \
    apscheduler \
    schedule \
    croniter \
    pytz \
    tzlocal \
    python-dateutil \
    pendulum \
    arrow \
    Pillow \
    opencv-python-headless \
    imageio \
    imageio-ffmpeg \
    moviepy \
    ffmpeg-python \
    mutagen \
    pydub \
    yt-dlp \
    youtube-search-python \
    beautifulsoup4 \
    lxml \
    html5lib \
    soupsieve \
    selectolax \
    selenium \
    playwright \
    undetected-chromedriver \
    cloudscraper \
    fake-useragent \
    requests-html \
    feedparser \
    xmltodict \
    pyyaml \
    toml \
    python-dotenv \
    pydantic \
    pydantic-settings \
    email-validator \
    python-multipart \
    rich \
    colorama \
    loguru \
    tqdm \
    tabulate \
    emoji \
    humanize \
    faker \
    numpy \
    scipy \
    pandas \
    matplotlib \
    openpyxl \
    xlsxwriter \
    xlrd \
    odfpy \
    pyarrow \
    sqlalchemy \
    alembic \
    peewee \
    dataset \
    pymongo \
    motor \
    redis \
    fakeredis \
    pymysql \
    psycopg2-binary \
    mysqlclient \
    asyncpg \
    cryptography \
    bcrypt \
    pyjwt \
    passlib \
    pycryptodome \
    pynacl \
    rsa \
    ecdsa \
    dnspython \
    psutil \
    docker \
    GitPython \
    paramiko \
    fabric \
    invoke \
    watchdog \
    filelock \
    python-magic \
    chardet \
    tenacity \
    cachetools \
    diskcache \
    joblib \
    click \
    typer \
    flask \
    flask-cors \
    flask-login \
    flask-sqlalchemy \
    flask-session \
    flask-limiter \
    fastapi \
    uvicorn \
    gunicorn \
    starlette \
    jinja2 \
    itsdangerous \
    Werkzeug \
    quart \
    sanic \
    tornado \
    bottle \
    openai \
    google-generativeai \
    anthropic \
    transformers \
    sentencepiece \
    accelerate \
    tokenizers \
    safetensors \
    huggingface-hub \
    scikit-learn \
    nltk \
    spacy \
    torch \
    torchvision \
    torchaudio \
    tensorflow \
    keras \
    sympy \
    networkx \
    numba \
    regex \
    markdown \
    markdownify \
    bleach \
    rapidfuzz \
    fuzzywuzzy \
    python-Levenshtein \
    qrcode \
    pyzbar \
    segno \
    pdfplumber \
    pypdf \
    PyPDF2 \
    reportlab \
    python-docx \
    python-pptx \
    ebooklib \
    openai-whisper \
    whisper \
    soundfile \
    librosa \
    pyinstaller \
    wheel \
    pip-tools \
    pipdeptree \
    pip-audit \
    virtualenv \
    && pip cache purge

# سكريبت التشغيل
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
