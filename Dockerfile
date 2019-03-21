FROM ubuntu:18.04

ENV PATH /home/sml/bin:$PATH

WORKDIR /home

RUN apt-get update && \
    apt-get install curl -y && \
    apt install build-essential -y && \
    apt install gcc-multilib -y && \
    apt install g++-multilib -y && \
    mkdir -p /home/sml && \
    cd /home/sml && \
    curl http://smlnj.cs.uchicago.edu/dist/working/110.75/config.tgz --output sml.tgz && \
    tar -xzvf sml.tgz && \
    ./config/install.sh && \
    rm -rf /var/cache/apt/*
