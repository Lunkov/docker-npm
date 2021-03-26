# Set NPM base image
FROM ubuntu:18.04

# File Author / Maintainer
MAINTAINER ANO "Digital Country"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y git wget curl gcc g++ make

# INSTALL NODEjs 11
#RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
#RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
#RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
#RUN apt-get update && apt-get -y install yarn

# INSTALL NodeJS LATEST
RUN apt-get install -y nodejs

#RUN snap install node --classic --channel 11/stable 

RUN apt-get update && \
    apt-get install -y npm && \
    apt-get clean

#RUN npm install -g npm@latest --unsafe-perm
#RUN npm install -g node@latest --unsafe-perm
#RUN npm install -g npm@latest --unsafe-perm
#RUN npm install -g phantomjs-prebuilt --upgrade --unsafe-perm

RUN npm install -g bower@latest
RUN npm install -g gulp-cli@latest
RUN npm install -g gulp

RUN node -v
RUN npm -v
RUN gulp -v