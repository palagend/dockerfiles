FROM palagend/rdk:cn
RUN apk --no-cache add musl-dev gcc make zlib-dev &&\ 
    apk --no-cache add ruby-dev=2.4.3-r0
RUN apk --no-cache add sqlite sqlite-dev nodejs tzdata 
RUN gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/ &&\
    gem install rails --no-doc
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.org
EXPOSE 3000
