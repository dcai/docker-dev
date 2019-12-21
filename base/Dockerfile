ARG UBUNTU_VERSION=18.04
FROM ubuntu:${UBUNTU_VERSION}

ENV VERSION_RIPGREP "11.0.2"
ENV DEBIAN_FRONTEND=noninteractive
ENV HOMEDIR=/root

MAINTAINER Dongsheng Cai <d@tux.im>
WORKDIR $HOMEDIR

RUN pwd

RUN ["apt-get", "-y", "update"]
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apt-transport-https \
    apt-utils \
    locales \
    software-properties-common \
    wget

RUN add-apt-repository -y ppa:jonathonf/vim
RUN add-apt-repository -y ppa:fish-shell/release-3
RUN add-apt-repository -y ppa:git-core/ppa

RUN ["apt-get", "-y", "update"]

RUN wget https://github.com/BurntSushi/ripgrep/releases/download/${VERSION_RIPGREP}/ripgrep_${VERSION_RIPGREP}_amd64.deb
RUN dpkg -i ripgrep_${VERSION_RIPGREP}_amd64.deb

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
        aptitude \
        aria2 \
        aspell \
        ca-certificates \
        cmake \
        curl \
        emacs-nox \
        fish \
        git \
        golang \
        htop \
        httpie \
        jq \
        mcrypt \
        memcached \
        mosh \
        mycli \
        ncdu \
        ntp \
        ntpdate \
        p7zip \
        pgcli \
        python-pip \
        python3-pip \
        python3-tmuxp \
        python3-venv \
        redis-server \
        ruby \
        ruby-dev \
        silversearcher-ag \
        tig \
        tmux \
        tmuxinator \
        tree \
        unrar \
        unzip \
        vim \
        virtualenv \
        wget \
        xz-utils

# configure locale
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && dpkg-reconfigure --frontend=noninteractive locales \
    && update-locale LANG=en_US.UTF-8
ENV LANG en_US.UTF-8
RUN ln -fs /usr/share/zoneinfo/Australia/Sydney /etc/localtime
