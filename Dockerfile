FROM node:13.12.0-alpine

MAINTAINER dlxneamtu "dlxneamtu@yahoo.com"

WORKDIR /app

#ENV PATH /app/node_modules/.bin:$PATH
ENV http_proxy proxy-wsa.esl.cisco.com:80
ENV https_proxy proxy-wsa.esl.cisco.com:80

COPY package.json package-lock.json ./

#npm config set proxy http:proxy-wsa.esl.cisco.com:80
#npm config set https-proxy http:proxy-wsa.esl.cisco.com:80
RUN npm install

COPY . ./

CMD ["npm", "start"]
