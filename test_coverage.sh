#!/usr/bin/env bash

set -ex


# pip install coveralls
# pipenv install coverage==5.0.1
# pipenv install pytest-cov
# pipenv install coveralls==1.10.0

pipenv sync

coverage erase
coverage run -m pytest tests/test.py
coveralls
