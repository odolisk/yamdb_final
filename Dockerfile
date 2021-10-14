FROM python:3.8-slim-buster

COPY ./ /app
RUN python -m venv venv
RUN python -m pip install --upgrade pip
RUN ls /app/ -la
RUN pip install -r /app/requirements.txt

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000