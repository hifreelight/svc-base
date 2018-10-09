# First build
FROM keymetrics/pm2:8-alpine
WORKDIR /app
# Install python
RUN apk update && apk add --update --virtual build-deps --no-cache \
    fontconfig \
    curl \
    curl-dev \
    python \
    python-dev \
    py-pip \
    build-base && \
    mkdir -p /usr/share && \
    cd /usr/share \
    && curl -L https://github.com/Overbryd/docker-phantomjs-alpine/releases/download/2.11/phantomjs-alpine-x86_64.tar.bz2 | tar xj \
    && ln -s /usr/share/phantomjs/phantomjs /usr/bin/phantomjs

# Bundle APP files
ONBUILD COPY . /app

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm i -g cnpm
ONBUILD RUN cnpm install --production
ONBUILD RUN apk del build-deps

VOLUME ["/data", "/logs"]
CMD [ "pm2-runtime", "server/server.js" ]