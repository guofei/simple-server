FROM elixir:latest

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp
RUN chmod +x run.sh

RUN mix local.hex --force && mix deps.get

CMD ["/myapp/run.sh"]
