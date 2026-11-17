FROM python:3.11-slim
RUN pip install --no-cache-dir litellm[proxy]
COPY config.yaml /app/config.yaml
WORKDIR /app
EXPOSE 7860
CMD ["litellm", "--config", "config.yaml", "--port", "7860", "--host", "0.0.0.0"]
