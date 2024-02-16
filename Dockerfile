FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --only=production --loglevel=warn

COPY . .

CMD ["npm", "run", "start"]
