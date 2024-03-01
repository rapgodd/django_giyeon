# pull official base image 파이썬이 설치되어 있는 가상의 컴퓨터 만들기
FROM python:3.10.1-slim-buster

# set work directory 작업경로 지정하기
WORKDIR /usr/src/app




# set environment variable
ENV PYTHONDONTWRTIEBYTECODE 1
ENV PYTHONBUFFERED 1




COPY . /usr/src/app/


RUN apt-get update && apt-get install -y \
    gcc \
    libc-dev \
    libffi-dev \
    zlib1g-dev \
    libjpeg-dev \
    && rm -rf /var/lib/apt/lists/*



# install dependencies

RUN pip install --upgrade pip

RUN pip install -r requirements.txt