FROM node:lts

ENV NODE_VERSION 16.8.0
ENV PORT=80
ENV GIT_VERSION=$GIT_VERSION

WORKDIR /app

ENV NODE_ENV production

ADD ./node_modules ./node_modules
ADD ./.next ./.next

EXPOSE 80

CMD [ "npx", "next", "start"]
