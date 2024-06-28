# Use the Node.js base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY . /app

# Install dependencies
RUN npm install

# Copy the rest of the code to the working directory

# Build the Nuxt.js project
RUN npm run build

# Expose the port that Nuxt.js will use
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
