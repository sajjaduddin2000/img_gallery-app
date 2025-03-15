#!/bin/bash
apt-get update && apt-get install -y cifs-utils
gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app --bind 0.0.0.0:8000
