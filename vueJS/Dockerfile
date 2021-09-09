FROM node
WORKDIR /app
RUN ls -la
COPY . /app
#COPY package.json /app
RUN npm install 
EXPOSE 8080
CMD ["npm", "run", "serve"]
#RUN npm run serve
