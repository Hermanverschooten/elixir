FROM ubuntu:16.04
MAINTAINER Herman verschooten <Herman@verschooten.net>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq && apt-get -y install apt-utils apt-transport-https curl wget

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
#
# ERLANG
RUN curl -O https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb
RUN rm erlang-solutions_1.0_all.deb

RUN apt-get update -qq
RUN apt-get -y install git-core  \
      build-essential autoconf m4 libncurses5-dev libwxgtk3.0-dev \
      libgl1-mesa-dev libglu1-mesa-dev libpng3 libssh-dev unixodbc-dev \
      locales inotify-tools \
      esl-erlang
#
# ASDF
RUN git clone https://github.com/asdf-vm/asdf.git /.asdf --branch v0.5.0

ENV ASDF_DIR /.asdf

ENV PATH="$ASDF_DIR/bin:/root/.asdf/shims:${PATH}"

RUN asdf update
RUN asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

RUN locale-gen nl_BE.UTF-8 en_US.UTF-8
ENV LANG nl_BE.UTF-8
ENV LANGUAGE nl_BE:nl

RUN asdf install elixir 1.7.3-otp-21
RUN asdf global elixir 1.7.3-otp-21


RUN mix local.rebar --force
RUN mix local.hex --force
