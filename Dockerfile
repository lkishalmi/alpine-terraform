FROM dsop/alpine-base

RUN cd /usr/local/bin && \
    wget https://releases.hashicorp.com/terraform/0.6.14/terraform_0.6.14_linux_amd64.zip && \
    unzip terraform_0.6.14_linux_amd64.zip && \
    rm terraform_0.6.14_linux_amd64.zip

RUN apk --update add git openssh

WORKDIR /work

CMD ["/bin/bash"]
