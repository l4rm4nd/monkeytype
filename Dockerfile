# Use an official Node.js runtime as the base image
FROM node:18.19.0-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the project files to the container
COPY . .

# Clear npm cache (optional)
# Install project dependencies
RUN npm cache clean --force && npm run install-all

# Expose any necessary ports (if your application listens on a specific port)
EXPOSE 3000

# Start your application
CMD ["npm", "run", "dev"]
