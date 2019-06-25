FROM hermanverschooten/elixir:1.7.3-otp-21
MAINTAINER Herman verschooten <Herman@verschooten.net>

RUN asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
RUN bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

RUN asdf install nodejs 8.8.1
RUN asdf global nodejs 8.8.1
