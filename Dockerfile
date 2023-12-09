#dari image node:14
FROM node:14-alpine 

#workdirapp
WORKDIR /app

#copy ke file app
COPY . .

#membuat node environtment 
ENV NODE_ENV=production DB_HOST=item-db

#install dependencies
RUN npm install --production --unsafe-perm && npm run build

#publish port
EXPOSE 8080

#running
CMD ["npm","start"]