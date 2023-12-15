# Use the official Node.js image as the base image
FROM node:14.17.6-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install \
    && npm install axios 
    
# Copy the rest of the application code
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Start the React Native packager
CMD ["npx", "expo", "start"]


