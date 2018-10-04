FROM mongo:latest
WORKDIR /data
COPY . .
VOLUME [ "/data/db" ]
EXPOSE 27017
CMD ["mongod"]
