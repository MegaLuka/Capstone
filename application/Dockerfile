FROM node:18
## Step 1:
# Create a working directory
WORKDIR /usr/src/app

## Step 2:
# Copy source code to working directory
COPY package*.json ./
# COPY . app.js /app/

## Step 3:
# Install packages 

RUN npm install
COPY . .
## Step 4:
# Expose port 80
EXPOSE 3000
## Step 5:
# Run app.py at container launch
CMD ["node", "app.js"]


