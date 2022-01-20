FROM node:slim

WORKDIR /app
COPY package*.json ./

ENV PATH=/app/node_modules/.bin:$PATH

RUN npm ci

COPY . .

CMD ["npm", "start"]