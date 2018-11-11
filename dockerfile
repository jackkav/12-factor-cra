FROM node:alpine

# The base node image sets a very verbose log level.
ENV NPM_CONFIG_LOGLEVEL warn

COPY . .

# Build for production.
RUN npm run build --production

# Install `serve` to run the application.
RUN npm install -g serve

# Set the command to start the node server.
CMD [ "./docker-start.sh" ]

# Tell Docker about the port we'll run on.
EXPOSE 5000