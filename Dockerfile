FROM node:20-alpine

WORKDIR /app

COPY . .

WORKDIR /app/web
RUN npm install && npm run build

WORKDIR /app/api
RUN npm install && npm run build

CMD ["npm", "start"]