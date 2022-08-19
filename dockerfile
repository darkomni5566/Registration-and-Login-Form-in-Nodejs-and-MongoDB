FROM node:12.21.0

RUN apt-get update
RUN apt-get install git
WORKDIR /usr/src/app
RUN git clone https://github.com/guruhariharaun/Registration-and-Login-Form-in-Nodejs-and-MongoDB.git
COPY server.js /usr/src/app/Registration-and-Login-Form-in-Nodejs-and-MongoDB/
WORKDIR /usr/src/app/Registration-and-Login-Form-in-Nodejs-and-MongoDB
RUN npm install
CMD ["npm", "start"]
