FROM node:12.2.0-alpine
#FROM instruction specifies the base image to use for the build

WORKDIR app
#WORKDIR instruction sets the working directory for any subsequent instructions

COPY . .
#COPY instruction copies files from the host machine to the Docker image

RUN npm install
#RUN instruction runs a command inside the Docker image
RUN npm run test

EXPOSE 8000
#The EXPOSE instruction in a Dockerfile informs Docker that the container will listen on the specified network ports here it is 8000 runtime

CMD ["node","app.js"]
#CMD instruction specifies the default command to run when the Docker image is started
