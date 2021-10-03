# pull the official base image
FROM python:3.8.3-alpine

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# need to update and install dev dependencies of psql
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

# need to install to work with images
RUN apk add zlib zlib-dev jpeg-dev

# install dependencies
RUN pip install --upgrade pip 
COPY ./requirements.txt /usr/src/app
RUN pip install -r requirements.txt

# copy project
COPY . /usr/src/app

RUN python manage.py collectstatic

EXPOSE 8000

ENTRYPOINT ["./gunicorn.sh"]
