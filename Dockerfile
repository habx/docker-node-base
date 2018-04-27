FROM node:9-alpine

WORKDIR /app/

RUN apk update && \
    apk add git python make g++ && \
    rm -rf /var/cache/apk/*
RUN npm i -g npm@6.0.0
RUN echo -e "//registry.npmjs.org/:_authToken=\${NPM_TOKEN}\nscope=habx\nloglevel=info" > ~/.npmrc

CMD npm start
