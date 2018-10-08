# First build
FROM keymetrics/pm2:8-alpine
WORKDIR /app
# Install python
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base
# Bundle APP files
COPY . /app
ONBUILD COPY . /app

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm i -g cnpm
RUN cnpm install --production
ONBUILD RUN cnpm install --production

# Show current folder structure in logs
RUN ls -al -R
EXPOSE 3000

CMD [ "pm2-runtime", "start", "pm2.json" ]

# Second build
#FROM lb4-example
#COPY . /app
#RUN cnpm i --production
#EXPOSE 3000
