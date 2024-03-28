# Dockerfile
FROM python:3.10.4-slim-buster
RUN pip install --upgrade pip
RUN pip install certipy-ad
RUN apt update && apt install git -y
RUN apt-get install -y proxychains4
COPY proxychains4.conf /etc/proxychains4.conf
RUN pip3 install git+https://github.com/ly4k/ldap3
WORKDIR /tmp
