#!/bin/sh

# wait for PSQL server to start
sleep 10

cd /code

# migrate db, so we have the latest db schema
mix ecto.migrate

# start development server on public ip interface, on port 8000
mix phoenix.server
