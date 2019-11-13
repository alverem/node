# Use an existing docker image as a base
FROM node:alpine
WORKDIR '/app'
# Download and install dependency
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Tell the image what to do when it starts as a container
CMD ["npm", "start"]
