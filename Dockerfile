FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
RUN pip install pip -U
ADD requirements.txt /usr/src/app
RUN pip install -r requirements.txt
ADD . /usr/src/app