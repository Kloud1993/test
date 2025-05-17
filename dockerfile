# Use an official Node.js LTS version as base image
FROM node:18

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy application source code
COPY . .

# Expose port (adjust to your app’s listening port)
EXPOSE 4000

# Command to run the app
CMD ["node", "index.js"]
