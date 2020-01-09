ARG BASE_VERSION=0.0.3
FROM dcai/ubuntu-base:${BASE_VERSION}

ENV HOMEDIR=/root

MAINTAINER Dongsheng Cai <d@tux.im>
WORKDIR $HOMEDIR

RUN pwd

COPY init-dotfiles.bash /usr/bin/
RUN chmod +x /usr/bin/init-dotfiles.bash

ENTRYPOINT ["/usr/bin/fish"]
