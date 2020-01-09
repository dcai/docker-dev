ARG DEV_IMAGE_VERSION=0.0.1
FROM dcai/dev:${DEV_IMAGE_VERSION}

ENV HOMEDIR=/root
ENV VERSION_HELM2 "2.13.1"

MAINTAINER Dongsheng Cai <d@tux.im>
WORKDIR $HOMEDIR

RUN pwd

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN ["apt-get", "-y", "update"]
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y google-cloud-sdk

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

RUN wget -q https://get.helm.sh/helm-v${VERSION_HELM2}-linux-amd64.tar.gz \
    && tar xzf helm-v${VERSION_HELM2}-linux-amd64.tar.gz \
    && mv ./linux-amd64/helm /usr/bin/helm2 \
    && chmod a+x /usr/bin/helm2

ENTRYPOINT ["/usr/bin/fish"]
