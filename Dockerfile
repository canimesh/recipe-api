FROM python:3.8-alpine3.12

# RECOMMENDED WHEN USING PYTHON IN DOCKER
ENV PYTHONUNBUFFERED 1 

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app

COPY ./app /app


RUN adduser -D recipe-api-user
USER recipe-api-user