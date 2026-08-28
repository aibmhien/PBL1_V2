FROM python:3.12-slim
WORKDIR /app
RUN apt-get update && apt-get install -y --no-install-recommends libpango-1.0-0 libpangoft2-1.0-0 && rm -rf /var/lib/apt/lists/*
COPY requirements.txt requirements_server.txt ./
RUN pip install --no-cache-dir -r requirements_server.txt
COPY . .
ENV PORT=8000
CMD sh -c 'uvicorn app:app --host 0.0.0.0 --port ${PORT}'
