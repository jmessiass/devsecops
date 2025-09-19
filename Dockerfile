FROM python:3.13-alpine

ENV API_SERVER_HOME=/opt/www
WORKDIR "$API_SERVER_HOME"

# Install system dependencies first
RUN apk update && apk add --no-cache \
    gcc \
    libffi-dev \
    linux-headers \
    musl-dev \
    python3-dev \
    && rm -rf /var/cache/apk/*

# Copy requirements and install Python dependencies
COPY "./requirements.txt" "./"
COPY "./app/requirements.txt" "./app/"
COPY "./tasks" "./tasks"

# Handle optional dependencies and install everything in one RUN
ARG INCLUDE_POSTGRESQL=false
ARG INCLUDE_UWSGI=false

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    pip install --no-cache-dir -r app/requirements.txt && \
    pip install --no-cache-dir -r tasks/requirements.txt && \
    if [ "$INCLUDE_POSTGRESQL" = 'true' ]; then \
        apk add --no-cache postgresql-dev libpq && \
        pip install --no-cache-dir psycopg2-binary; \
    fi && \
    if [ "$INCLUDE_UWSGI" = 'true' ]; then \
        pip install --no-cache-dir uwsgi; \
    fi

# Copy application code and setup
COPY "./" "./"
COPY "./config.py" "./"

RUN if [ ! -e "./local_config.py" ]; then \
        cp "./local_config.py.template" "./local_config.py"; \
    fi && \
    adduser -D -s /bin/sh appuser && \
    chown -R appuser:appuser "$API_SERVER_HOME"

USER appuser
EXPOSE 5000

CMD [ "python", "-m", "flask", "run", "--host", "0.0.0.0", "--port", "5000" ]
