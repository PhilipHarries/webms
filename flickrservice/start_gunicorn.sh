#!/usr/bin/env bash
. venv/bin/activate
[[ -f ./requirements.txt ]] && pip install -r ./requirements.txt
[[ -f ./requirements_gunicorn.txt ]] && pip install -r ./requirements_gunicorn.txt
[[ -f ../secrets.sh ]] && . ../secrets.sh
cd ..
gunicorn --timeout 120 --workers 12 --pid ./flickr_run.pid --log-level DEBUG -b 0.0.0.0:5433 flickrservice:app
