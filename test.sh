#!/bin/bash

source venv/bin/activate

set -e

mkdir -p testing
cd testing

rm -Rf django
echo |cookiecutter ../

# Smoke-testing custom ./manage.py commands
cd django/src
./manage.py startapp test_app
./manage.py makemigrations -n testappmigration01
