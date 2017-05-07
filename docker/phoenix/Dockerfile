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

WORKDIR /code
