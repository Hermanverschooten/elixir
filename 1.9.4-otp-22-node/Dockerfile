FROM hermanverschooten/elixir:1.9.4-otp-22
MAINTAINER Herman verschooten <Herman@verschooten.net>

RUN asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
RUN bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

RUN asdf install nodejs 13.1.0
RUN asdf global nodejs 13.1.0
