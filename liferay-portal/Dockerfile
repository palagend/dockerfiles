FROM hub.c.163.com/palagend/openjdk-jre:8
WORKDIR /opt
RUN wget -O liferay-pristine.zip http://jaist.dl.sourceforge.net/project/lportal/Liferay%20Portal/7.0.4%20GA5/liferay-ce-portal-tomcat-7.0-ga5-20171018150113838.zip
RUN unzip /opt/liferay-pristine.zip && ln -s /opt/liferay-ce-portal-7.0-ga5 portal
ENV LIFERAY_PORTAL_HOME=/opt/portal
WORKDIR ${LIFERAY_PORTAL_HOME}
CMD ["${LIFERAY_PORTAL_HOME}/tomcat-8.0.32/bin/startup.sh"]
