# Use a base image with Node.js pre-installed
FROM node:14

# Remove existing yarn and yarnpkg symlinks
RUN rm -f /usr/local/bin/yarn /usr/local/bin/yarnpkg

# Install yarn globally
RUN npm install -g yarn

# Clone the Slim source code
#TO DO
#will need to fork the repo and edit local config file to have DICOM store server settings

RUN git clone https://github.com/ImagingDataCommons/slim.git



# Set the working directory to the Slim project
WORKDIR /slim

# Install the node version management library (n)
RUN npm install -g n

# Update Node.js to version 14 using n
RUN n install 14 && n 14

# Install Slim's dependencies using yarn
RUN yarn install

# Expose port 3000 for the Slim app
EXPOSE 3000

# Set the default command to start the Slim app
CMD ["yarn", "start"]
