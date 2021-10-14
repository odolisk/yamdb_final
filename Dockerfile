FROM python:3.8-slim-buster

COPY ./ /code
WORKDIR /code/yamdb_final/
RUN ls /code/yamdb_final/ -la
RUN pip install -r requirements.txt
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000