FROM ubuntu:20.04

LABEL   maintainer="Pascal Watteel" \
        name="jenkins-automation" \
        version="1.0"

#set env variables
ENV DEBIAN_FRONTEND noninteractive

# Requirements
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y   default-jre \
                        wget \
                        python3-pip \
                        jq \
                        curl \
                        unzip \
                        git \
    && apt-get clean autoclean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# Install latest terraform
ADD get-latest-terraform.sh /tmp/get-latest-terraform.sh
RUN chmod +x /tmp/get-latest-terraform.sh \
    && cd /usr/bin \
    && /tmp/get-latest-terraform.sh

