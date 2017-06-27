#!/bin/sh

# wait for PSQL server to start
sleep 10

# build react app
cd /code/priv/react
yarn install && yarn build

# install phoenix dependencies
cd /code
mix deps.get

# migrate db, so we have the latest db schema
mix ecto.setup

# start phoenix on port 4000
mix phoenix.server
