FROM ubuntu:22.04 
LABEL engg="pratik" 
USER root 
RUN apt update 
RUN apt install nodejs npm -y
COPY . .
RUN npm install 
EXPOSE 3000 
CMD [ "npm" , "start" ]
