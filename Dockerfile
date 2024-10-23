# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /workspace/repo

# Copy the rest of your application code
COPY . .

# Install dependencies (this includes 'serve' from package.json)
RUN npm install


# Expose port 3000 (default for serve)
EXPOSE 3000

# Run 'serve' using npx, serving the static files on port 3000
CMD node server.js