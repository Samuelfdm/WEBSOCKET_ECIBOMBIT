# Dockerfile - websocket-server
FROM node:20-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
COPY .env.production .env
EXPOSE 3000
CMD ["node", "server.js"]