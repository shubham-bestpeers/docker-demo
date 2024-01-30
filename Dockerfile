# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the local files to the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
