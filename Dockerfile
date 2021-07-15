FROM node:14.17.1-slim
ENV TRANSPORTER=nats://localhost:4222

RUN mkdir /app
WORKDIR /app

COPY . .
RUN npm install

ENTRYPOINT ["node", "./bin/moleculer"]
