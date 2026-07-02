FROM node:22-alpine

RUN apk add --no-cache libc6-compat

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 1337

CMD ["npm", "run", "start"]