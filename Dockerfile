FROM node:20-alpine

WORKDIR /app

COPY package.json .

RUN npm install -g serve

RUN npm install

COPY . .

RUN npm run build

EXPOSE 5173

CMD [ "serve", "-s", "./dist/" , "-p" , "3000"]