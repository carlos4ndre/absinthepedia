#!/bin/sh

# wait for PSQL server to start
sleep 10

cd /code

# migrate db, so we have the latest db schema
mix ecto.migrate

# start phoenix on port 4000
mix phoenix.server
