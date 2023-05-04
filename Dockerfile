FROM node:14-alpine

WORKDIR /home/node/app

COPY ./package.json .

COPY yarn.lock .

COPY . .

RUN yarn

RUN yarn tsc

ENV NODE_ENV production

EXPOSE 9000

CMD ["yarn", "start"]
