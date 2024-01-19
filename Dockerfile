# Dockerfile
FROM python:3.10.4-slim-buster
RUN pip install --upgrade pip
RUN pip install certipy-ad
RUN apt update && apt install git -y
RUN pip3 install git+https://github.com/ly4k/ldap3
WORKDIR /tmp
