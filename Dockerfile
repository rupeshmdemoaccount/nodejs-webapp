# Base image
FROM node:lts-alpine3.17

# set the working directory
WORKDIR /app

# Copy package.json
COPY package*.json .

# Install dependecies
RUN npm install

# Copy source code to the container work directory
COPY . .

# Expose port 
EXPOSE 3000

# Entry for CMD
CMD ["node", "server.js"] 

