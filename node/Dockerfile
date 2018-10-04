FROM node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
COPY . /usr/src/app
RUN npm install 
RUN apt-get update
RUN apt-get install nano
EXPOSE 3000
CMD ["node","app.js"]