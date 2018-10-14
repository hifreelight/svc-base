# First build
FROM keymetrics/pm2:8-stretch
WORKDIR /app

# Bundle APP files
ONBUILD COPY . /app

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm i -g cnpm
ONBUILD RUN cnpm install --production

VOLUME ["/data", "/logs"]
CMD [ "pm2-runtime", "start", "server/server.js" ]