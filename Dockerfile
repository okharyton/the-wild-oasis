FROM node:23-alpine

RUN npm install -g vite

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 80

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "80"]