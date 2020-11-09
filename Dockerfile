FROM ubuntu:20.04

LABEL   maintainer="Pascal Watteel" \
        name="jenkins-automation" \
        version="1.0"

#set env variables
ENV DEBIAN_FRONTEND noninteractive

# Requirements
RUN apt update -y \
    && apt upgrade -y \
    && apt install -y   default-jre \
                        wget \
                        python3-pip \
                        jq \
                        unzip \
    && apt-get clean autoclean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

