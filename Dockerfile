# Use an official Node.js runtime as a parent image
FROM node:10-alpine

# Set the working directory inside the container
WORKDIR /f/DevOpsStudy/day2/skapp

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Bundle your source code into the container
COPY . .

# Expose a port (if your application listens on a specific port)
EXPOSE 3000

CMD [ "node", "app.js" ]
