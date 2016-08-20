FROM ubuntu:trusty

# Install Node.JS 6.x Base
RUN apt-get -y update && apt-get install -y wget g++ build-essential
RUN bash -c "$(wget -O - https://deb.nodesource.com/setup_6.x)"
RUN apt-get install -y nodejs


# Install Zeromq
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:chris-lea/zeromq
RUN add-apt-repository ppa:chris-lea/libpgm
RUN apt-get -y update && apt-get install -y libzmq3-dev

# App
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
EXPOSE 8080

CMD [ "npm", "start" ]

