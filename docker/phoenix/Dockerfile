FROM elixir:latest

MAINTAINER Carlos Andre (carlos.ulrich@gmail.com)

# Update the package repository
RUN apt-get update && apt-get upgrade -y
RUN apt-get install locales sudo

# Set locale
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN locale-gen en_US en_US.UTF-8 && DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales

# Install Phoenix
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN mix local.hex --force

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && sudo apt-get install -y nodejs

# Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && \
    sudo apt-get update && sudo apt-get install yarn

WORKDIR /code
