FROM alpine:3.7
RUN rm -rf /var/cache/apk
RUN sed -i 's#dl-cdn.alpinelinux.org#mirrors.ustc.edu.cn#' /etc/apk/repositories
RUN apk --no-cache add ruby=2.4.3-r0 ruby-bundler=1.16.0-r0
