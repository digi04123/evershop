FROM node:20-alpine3.18
WORKDIR /app
RUN npm install -g npm@9
COPY package*.json .
COPY packages /app/packages/
RUN npm install elastic-apm-node --save
RUN npm install
RUN npm run build

EXPOSE 80
CMD ["npm", "run", "start"]
