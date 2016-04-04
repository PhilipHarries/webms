#!/usr/bin/env bash
. venv/bin/activate
pip install -r ./requirements.txt
pip install -r ./requirements_gunicorn.txt
cd ..
gunicorn --timeout 120 --workers 4 --pid ./frontendservice.pid --log-level=DEBUG -b 0.0.0.0:5480 frontendservice:app
