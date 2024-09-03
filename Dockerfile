FROM node:18.16.0-alpine3.17

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY src/ ./src/
COPY src/.env.production ./src/


EXPOSE 3231
ENTRYPOINT [ "npm", "run", "start:production" ]


