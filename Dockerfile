FROM node:onbuild
RUN  npm install -g grunt-cli bower
RUN  bower install --allow-root && grunt build
VOLUME [ "/tmp/torrent-stream" ]
EXPOSE 6881 9000
