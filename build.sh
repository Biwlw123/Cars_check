#!/usr/bin/env bash
set -o errexit

# Добавьте очистку кэша
pip cache purge

# Установка с игнорированием установленных пакетов
pip install --ignore-installed -r requirements.txt

python manage.py collectstatic --noinput
python manage.py migrate