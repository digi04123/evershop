FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm@9
COPY package*.json .

RUN npm install
RUN npm install elastic-apm-node --save
RUN npm run build

EXPOSE 80
CMD ["npm", "run", "start"]
