FROM node:14-slim
WORKDIR /app
COPY wait-for-service.sh ./ 
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
RUN chmod +x wait-for-service.sh
EXPOSE 3000
CMD ["yarn", "start"]
