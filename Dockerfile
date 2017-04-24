FROM ubuntu:16.04

RUN groupadd --gid 1000 node \
  && useradd --uid 1000 --gid node --shell /bin/bash --create-home node

RUN apt-get -y update && apt-get install -y curl wget libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev build-essential g++ gcc

ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 6.10.2

RUN wget https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz
RUN tar xvf node-v${NODE_VERSION}.tar.gz
WORKDIR node-v${NODE_VERSION}
RUN ./configure
RUN make
RUN make check
RUN make install
RUN node -v
RUN npm -v

CMD [ "node" ]
