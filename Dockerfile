# Use the official Node.js image as the base
FROM node:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY ./web-app/package*.json ./

# Install dependencies
RUN npm install

# Copy the application source code to the container
COPY ./web-app .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
