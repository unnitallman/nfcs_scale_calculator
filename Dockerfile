# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /workspace/repo

# Copy the rest of your application code
COPY . .

RUN npm install

EXPOSE 3000

CMD node server.js
