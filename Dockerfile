FROM node:21.5-bookworm-slim

RUN npm install -g npm@10.2.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
