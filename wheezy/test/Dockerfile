FROM keymetrics/pm2:8-wheezy

WORKDIR /app
COPY . /app

ENV NPM_CONFIG_LOGLEVEL warn
RUN npm i -g cnpm
RUN cnpm install --production
ONBUILD RUN cnpm install --production

VOLUME ["/data", "/logs"]
CMD [ "pm2-runtime", "server/server.js" ]