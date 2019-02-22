FROM node:8.15.0 AS node

ARG REGISTRY
ARG AUTH
ARG EMAIL
ARG ALWAYSAUTH

ENV REGISTRY $REGISTRY
ENV AUTH ${AUTH}
ENV EMAIL ${EMAIL}
ENV ALWAYS_AUTH ${ALWAYS_AUTH}

COPY /_layouts /project/_layouts
COPY package.json package-lock.json index.md Gemfile jekyll-koru.gemspec /project/

WORKDIR /project

RUN npm config set registry $REGISTRY && npm config set _auth $AUTH && npm config set email $EMAIL && npm config set always-auth $ALWAYS_AUTH && npm install

RUN mkdir assets && cp -r node_modules/koru-base/ assets/koru-base/

#FROM jekyll/builder:3.8.5
#
#CMD gem install bundler
#
#COPY --from=node /project/ /project/
#
#EXPOSE 4000
#
#WORKDIR /project

ENTRYPOINT /bin/bash