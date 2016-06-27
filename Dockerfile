FROM dsop/alpine-nodejs

ENV TERRAFORM_VERSION 0.6.16

RUN cd /usr/local/bin && \
    wget https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION/terraform_$TERRAFORM_VERSION_linux_amd64.zip && \
    unzip terraform_$TERRAFORM_VERSION_linux_amd64.zip && \
    rm terraform_$TERRAFORM_VERSION_linux_amd64.zip

RUN apk --update add git openssh

WORKDIR /work

CMD ["/bin/bash"]
