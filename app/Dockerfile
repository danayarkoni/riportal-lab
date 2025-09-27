FROM python:3.11-slim
WORKDIR /app
COPY app.py .
RUN pip install --no-cache-dir flask
ENV WELCOME_MSG="Hello from Kubernetes!"
ENV GIT_SHA="dev"
EXPOSE 8080
CMD ["python", "app.py"]
