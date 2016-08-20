FROM ubuntu:16.04

# Install Node.JS 6.x Base
RUN apt-get -y update && apt-get install -y wget
RUN bash -c "$(wget -O - https://deb.nodesource.com/setup_6.x)"
RUN apt-get install -y nodejs


# App
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
EXPOSE 8080

CMD [ "npm", "start" ]

