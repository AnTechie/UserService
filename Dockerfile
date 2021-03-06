# Use NodeJS base image
FROM node:13

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

COPY package*.json /usr/src/app/
COPY src/. /usr/src/app 

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 8080

# Define the Docker image's behavior at runtime
#CMD ["node", "server.js"]
CMD [ "npm", "run", "dev" ]
