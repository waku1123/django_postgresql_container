FROM python:3
ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

ADD requirements.txt /code/

RUN pip intall -r requirements.txt
ADD . /code/
