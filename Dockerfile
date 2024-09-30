# Stage 1: Build the Next.js app
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Install dependencies (package.json and package-lock.json)
COPY package.json package-lock.json ./

# Install node modules
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js app
RUN npm run dev





 