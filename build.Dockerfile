FROM node:lts

ENV NODE_VERSION 16.8.0
ENV PORT=80
ENV GIT_VERSION=$GIT_VERSION

RUN mkdir -p /code
WORKDIR /code

COPY . .

RUN yarn 
RUN yarn global add cross-env
RUN yarn build

EXPOSE 80

CMD [ "cross-env", "NODE_ENV=production", "node", "dist/index.js"]
