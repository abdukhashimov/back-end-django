#!/bin/sh
gunicorn app.wsgi -w 2 --threads 2 -b 0.0.0.0:8000