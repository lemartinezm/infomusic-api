FROM node:18
WORKDIR /infomusic
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD [ "node", "./dist/main.js" ]
EXPOSE 3000