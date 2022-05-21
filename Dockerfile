# we using a very minimal image with node installed
FROM node:latest

# set directory on container on which our file will have
WORKDIR /user/app

# copy everthing form my local computer to docker working directory
COPY package.json .
RUN npm install
COPY . .

# After copy we install packages in container

# ARG ENV
# RUN if [ "$ENV" = "first" ] ; then npx create-react-app ./app ; else npm install ; fi


EXPOSE 3000
# starting command to start project like our local machine
CMD ["npm","start"]