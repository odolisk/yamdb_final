FROM python:3.8-slim-buster

COPY . /code/yamdb_final/
WORKDIR /code/yamdb_final/
RUN ls -la /code/yamdb_final/
RUN pip install -r requirements.txt
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000