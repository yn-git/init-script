#!/bin/bash

PROJECT_DIR=~/project
create-react-app --template typescript $PROJECT_DIR
cd $PROJECT_DIR

yarn add \
    redux \
    react-redux \
    redux-saga \
    axios \
    link-module-arias

yarn add -D \
    electron \
    typedoc \
    # fomatter に必要なモジュール
    eslint \
    prettier \
    eslint-config-prettier \
    eslint-plugin-prettier \
    # linter に必要なモジュール
    @typescript-eslint/parser \
    @typescript-eslint/eslint-plugin \
    eslint-plugin-react \
    eslint-plugin-jest \
    # テストツール
    @types/jest \
    ts-jest \
    jest-extended

wget -O - https://raw.githubusercontent.com/yn-git/init-script/master/UI/.eslintrc > .eslintrc
wget -O - https://raw.githubusercontent.com/yn-git/init-script/master/UI/.prettierrc > .prettierrc.json
wget -O - https://raw.githubusercontent.com/yn-git/init-script/master/UI/jest.config.js > jest.config.j2
