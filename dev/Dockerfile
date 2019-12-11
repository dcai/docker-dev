ARG BASE_VERSION=0.0.1
FROM dcai/ubuntu-base:${BASE_VERSION}

ENV HOMEDIR=/root

MAINTAINER Dongsheng Cai <d@tux.im>
WORKDIR $HOMEDIR

RUN pwd

RUN mkdir -p .local/bin
RUN git clone https://github.com/dcai/.vim.git .vim
RUN git clone https://github.com/dcai/.tmuxinator.git
RUN git clone https://gist.github.com/2030ba4091ae888aa0e023c2e2018554.git .config/git
RUN git clone --depth=1 https://github.com/junegunn/fzf.git .fzf
RUN wget -q https://gist.githubusercontent.com/dcai/a2e7ca940babda0c7137/raw/9295d4db1781be6b8f7852fab68cae0c63831ab9/.tmux.conf
RUN wget -q https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -O .local/bin/diff-so-fancy
RUN chmod a+x .local/bin/diff-so-fancy
RUN .fzf/install --all
RUN echo "[user]" > .gitconfig.local
RUN echo "name = Dongsheng Cai" >> .gitconfig.local
RUN echo "email = d@tux.im" >> .gitconfig.local

ENTRYPOINT ["/usr/bin/fish"]
