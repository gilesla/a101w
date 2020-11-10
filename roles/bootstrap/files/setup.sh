#!/usr/bin/env bash

cd /home/$USER
export ANSIBLE_PYTHON_INTERPRETER=auto_silent
export PYTHONWARNINGS=ignore::UserWarning
python3.7 -m venv ansible-workshop
source ansible-workshop/bin/activate
pip install ansible ansible-lint
