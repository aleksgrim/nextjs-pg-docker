# Base image for Node.js development
FROM node:18-alpine AS base

# Set the working directory inside the container
WORKDIR /app

# Copy package files to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application code into the container
COPY . .

# Expose the development server port
EXPOSE 3000

# Default command to start the development server
CMD ["npm", "run", "dev"]

# Production stage
FROM node:18-alpine AS production

# Set the working directory
WORKDIR /app

# Set environment to production
ENV NODE_ENV=production

# Copy package files for installing production dependencies
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy application code
COPY . .

# Build the application
RUN npm run build

# Expose the application port
EXPOSE 3000

# Command to start the production server
CMD ["npm", "start"]

