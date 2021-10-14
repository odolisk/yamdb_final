FROM python:3.8-slim-buster

COPY ./ /code
RUN ls -la
RUN pip install -r requirements.txt
WORKDIR /code/yamdb_final/
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000