# Dockerfile
FROM python:3.10.4-slim-buster
RUN pip install --upgrade pip
RUN pip install certipy-ad
