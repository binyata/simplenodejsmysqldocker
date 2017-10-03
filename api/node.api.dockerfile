FROM node:latest

EXPOSE 5000

COPY ./ /var/www/test
WORKDIR /var/www/test

#RUN npm install --unsafe-perm -g bcrypt
#RUN npm install --unsafe-perm -g db-migrate
#RUN npm install --unsafe-perm -g db-migrate-mysql
#RUN npm install -g node-gyp && \
#        node-gyp clean && \
#        npm cache clean
RUN npm install --unsafe-perm -g
RUN cat package.json
CMD ["node", "server.js"]