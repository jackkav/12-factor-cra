FROM node:alpine

# The base node image sets a very verbose log level.
ENV NPM_CONFIG_LOGLEVEL warn
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

# Build for production.
RUN npm run build --production

# Set the command to start the node server.
CMD [ "npm", "run", "prep" ]

# Tell Docker about the port we'll run on.
EXPOSE 5000