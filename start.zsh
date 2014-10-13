#!/usr/bin/env zsh

source ~/.zshrc

cd $MRROBINSMITHCOM_HOME
green 'Starting server ...'
rake server &
killp postgres
green 'Starting postgres ...'
postgres -D "/Users/msl/Library/Containers/com.heroku.postgres/Data/Library/Application Support/Postgres/var" &
green 'Opening https://localhost:3000'
safari http://localhost:3000

