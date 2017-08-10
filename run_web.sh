#!/bin/sh

# wait for PSQL server to start
sleep 10

# migrate db, so we have the latest db schema
mix ecto.setup

# start phoenix on port 4000
mix phoenix.server
