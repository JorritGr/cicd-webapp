FROM node:14-slim
WORKDIR /app
COPY . /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY . .
EXPOSE 3000
CMD ["yarn", "start"]
