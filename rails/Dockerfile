FROM ruby:alpine
RUN sed -i 's#dl-cdn.alpinelinux.org#mirrors.ustc.edu.cn#' /etc/apk/repositories
RUN apk --no-cache add musl-dev gcc make
RUN apk --no-cache add sqlite sqlite-dev nodejs tzdata 
RUN gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/ &&\
    gem install rails --no-doc
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.org
EXPOSE 3000
