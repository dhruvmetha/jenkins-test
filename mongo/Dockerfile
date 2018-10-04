FROM mongo:latest
WORKDIR /data
COPY ./mongo ./
VOLUME [ "/data/db" ]
EXPOSE 27017
CMD ["mongod"]
