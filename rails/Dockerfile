FROM palagend/rdk:cn
RUN apk --no-cache add musl-dev gcc make sqlite sqlite-dev nodejs tz-data
RUN gem install rails --no-doc
EXPOSE 3000
