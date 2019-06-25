FROM hermanverschooten/elixir:1.9.0-otp-22
MAINTAINER Herman verschooten <Herman@verschooten.net>

RUN asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
RUN bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

RUN asdf install nodejs 10.9.0
RUN asdf global nodejs 10.9.0
