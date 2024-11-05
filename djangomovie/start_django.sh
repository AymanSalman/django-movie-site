#!/bin/bash

if [ "$DATABASE" = "mysql"]
then
    echo "waiting for mysql..."
    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done
    echo "MySql Started ;)"
fi

echo "Start database migrations..."
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8000

exec "$@"