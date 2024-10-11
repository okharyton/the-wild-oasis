FROM node:21

RUN npm install -g vite

RUN npm install -g npm@latest

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 80

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "80"]