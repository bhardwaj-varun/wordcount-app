FROM python:3.7-alpine

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /wordcount
WORKDIR /wordcount
COPY ./wordcount /wordcount

EXPOSE 8000