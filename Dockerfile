FROM python:3.8-slim-buster

WORKDIR /home/runner/work/yamdb_final/
RUN python -m venv venv
RUN python -m pip install --upgrade pip
RUN pip install -r /home/runner/work/yamdb_final/requirements.txt

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000