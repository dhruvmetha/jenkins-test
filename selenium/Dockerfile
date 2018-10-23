FROM python:3.7-alpine3.8
WORKDIR /usr/workspace
COPY . .

RUN echo "http://dl-4.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories
RUN apk update
RUN apk add chromium chromium-chromedriver
RUN pip install selenium==3.13.0






