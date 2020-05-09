#!/bin/bash
# Note
# Run this script in working directory as root user!

# make python devenv for remote container
poetry new --src `pwd`
python -m venv .venv
poetry add -D \
    flake8 \
    autopep8
# delete auto made files and directory.
rm -r src/project
rm tests/test_project.py
mv README.rst README.md

# make gitignore
wget -O - https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore > .gitignore
# make pytest.ini
wget -O - https://raw.githubusercontent.com/yn-git/init-script/master/python/pytest.ini > pytest.ini
# make pyrightconfig.json
wget -O - https://raw.githubusercontent.com/yn-git/init-script/master/python/pyrightconfig.json > pyrightconfig.json 

git init
