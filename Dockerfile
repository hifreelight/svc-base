# First build
FROM keymetrics/pm2:8-alpine
WORKDIR /app
# Install python
RUN apk add --update --virtual build-deps \
    python \
    python-dev \
    py-pip \
    build-base
# Bundle APP files
ONBUILD COPY . /app

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm i -g cnpm
ONBUILD RUN cnpm install --production
ONBUILD RUN apk del build-deps

VOLUME ["/data", "/logs"]
CMD [ "pm2-runtime", "start", "server/server.js" ]