FROM hub.c.163.com/library/alpine:3.6
RUN sed -i '1i\https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.6/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.6/community' /etc/apk/repositories &&\
    sed -i '/alpinelinux.org/d' /etc/apk/repositories &&\
    apk --no-cache upgrade
RUN apk --no-cache add openjdk8-jre
CMD ["/bin/sh"]
