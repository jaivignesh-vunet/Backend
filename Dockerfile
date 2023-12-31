# Base image
FROM node:14

# Set the build-time argument
ARG BUILD_TIME

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY backend.js .

# Expose the port that the application will listen on
EXPOSE 3000

# Start the application
CMD [ "node", "backend.js" ]

