FROM hermanverschooten/elixir:1.10.4-otp-23
MAINTAINER Herman verschooten <Herman@verschooten.net>

RUN apt-get install -y libffi-dev
RUN asdf plugin-add python
RUN asdf install python 3.7.4
RUN asdf global python 3.7.4

RUN asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git

RUN bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

RUN asdf install nodejs 13.1.0
RUN asdf install nodejs 13.11.0
RUN asdf global nodejs 13.11.0

