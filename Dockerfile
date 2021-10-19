FROM python:3.8-slim-buster

WORKDIR /code/
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
RUN python manage.py collectstatic --noinput
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000