FROM elixir:1.9.1-slim

RUN apt-get update -qq && apt-get -y --allow-unauthenticated install curl libpq-dev postgresql-client git make erlang-crypto apt-transport-https

RUN mkdir /home/app
WORKDIR /home/app
RUN mkdir -p /home/app/deps/

RUN mix local.hex --force
RUN mix local.rebar --force

COPY . .

EXPOSE 4000



