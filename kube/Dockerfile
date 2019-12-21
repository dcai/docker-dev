ARG BASE_VERSION=0.0.3
FROM dcai/ubuntu-base:${BASE_VERSION}

ENV HOMEDIR=/root

MAINTAINER Dongsheng Cai <d@tux.im>
WORKDIR $HOMEDIR

RUN pwd

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN ["apt-get", "-y", "update"]
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y google-cloud-sdk

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


# kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/bin/kubectl

# krew
RUN curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/download/v0.3.3/krew.{tar.gz,yaml}" && tar zxvf krew.tar.gz
RUN ./krew-linux_amd64 install --manifest=krew.yaml --archive=krew.tar.gz
RUN ./krew-linux_amd64 update

# kubectx
RUN wget -q https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx
RUN chmod +x ./kubectx
RUN mv ./kubectx /usr/bin/

# kubens
RUN wget -q https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens
RUN chmod +x ./kubens
RUN mv ./kubens /usr/bin/

# kubesec
RUN curl -sSL https://github.com/shyiko/kubesec/releases/download/0.9.2/kubesec-0.9.2-linux-amd64 -o kubesec \
    && chmod a+x kubesec \
    && mv kubesec /usr/bin/

ENTRYPOINT ["/usr/bin/fish"]
