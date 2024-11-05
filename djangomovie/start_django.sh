#!/bin/bash

echo "SQL_ROOT_PASSWORD: $SQL_ROOT_PASSWORD"
echo "SQL_USER: $SQL_USER"
echo "SQL_PASSWORD: $SQL_PASSWORD"
echo "SQL_DATABASE: $SQL_DATABASE"
echo "SQL_HOST: $SQL_HOST"
echo "SQL_PORT: $SQL_PORT"


if [ "$DATABASE" = "mysql" ]
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