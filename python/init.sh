#!/bin/bash
# Note: Execute this script in working directory!

# make python devenv for remote container
poetry new --src `pwd`
python -m venv .venv
poetry add -D \
    flake8 \
    autopep8
# delete auto made files and directory.
rm -r src/project
rm tests/test_project.py

# make gitignore
curl https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore > .gitignore

# make pytest.ini
curl https://raw.githubusercontent.com/yn-git/init-script/master/python/pytest.ini > pytest.ini
