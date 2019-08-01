#!/bin/sh
python manage.py collectstatic --noinput
python manage.py makemigrations
python manage.py migrate
gunicorn -b :8001 test_travis.wsgi:application
exec "$@"
