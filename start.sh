#!/bin/bash
set -e

sleep 10 && cd /app && pip install -r requirements.txt && pip uninstall --yes celery  && cd celery-master/ && python setup.py install && cd .. && celery -A api.celery worker --beat  -l info --scheduler django_celery_beat.schedulers:DatabaseScheduler