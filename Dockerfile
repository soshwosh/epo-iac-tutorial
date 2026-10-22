FROM node:24-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN corepack enable && corepack prepare yarn@1.22.22 --activate && yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "dev"]