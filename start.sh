#!/usr/bin/env bash
set -o errexit

gunicorn your_project.wsgi --bind 0.0.0.0:10000