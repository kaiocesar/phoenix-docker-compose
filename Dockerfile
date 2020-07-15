FROM bitwalker/alpine-elixir:1.10.3 as build

ENV MIX_ENV="dev" \
    APP_NAME="myapp"

WORKDIR /app

# COPY . .
# RUN mix deps.get && \
#     mix deps.compile

EXPOSE 4004

CMD ["iex", "-S", "mix"]