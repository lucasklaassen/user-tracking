FROM node:12.18.2

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install
RUN npm install -g live-server

# add app
COPY . /app

EXPOSE 8080
# start app
CMD live-server --port=8080 --host=0.0.0.0