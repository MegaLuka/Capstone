#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=0905062524/pythonapp:1.0 . 
# docker build --tag=0905062524/api . 

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
# docker run -p 80:80 0905062524/pythonapp:1.0