FROM node:13.12.0-alpine

MAINTAINER dlxneamtu "dlxneamtu@yahoo.com"

WORKDIR /app

#ENV PATH /app/node_modules/.bin:$PATH
#ENV http_proxy proxy-wsa.esl.cisco.com:80
#ENV https_proxy proxy-wsa.esl.cisco.com:80

COPY package.json package-lock.json ./

RUN npm install

COPY . ./

CMD ["npm", "start"]
