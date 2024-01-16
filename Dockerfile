FROM node:20.8.0

RUN mkdir -p /usr/src/

WORKDIR /usr/src/

COPY ["package.json", "package-lock.json", "/usr/src/"]

RUN npm i

COPY [".",  "/usr/src/"]

CMD ["npm", "start"]