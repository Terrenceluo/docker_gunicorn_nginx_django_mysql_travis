#!/usr/bin/python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': ':memory:',
    }
}


SECRET_KEY = 'unique snowflake'

# Django 1.7 throws dire warnings if this is not set.
# We don't actually use any middleware, given that there are no views.
MIDDLEWARE_CLASSES = ()
