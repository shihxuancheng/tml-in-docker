FROM shihxuancheng/wildfly-base:latest

# Environment variable with default value
ENV WF_CONFIG="standalone.xml"

LABEL maintainer="richard_shih@wanhai.com"

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize modules
RUN cd ${JBOSS_HOME}/config/modules && ./make_modules.sh

#customize settings
RUN cd ${JBOSS_HOME}/config/initial && ./setup.sh

#cleanup
RUN rm -rf ${JBOSS_HOME}/config

EXPOSE 8080 9990

CMD ["sh","-c","/opt/jboss/wildfly/bin/startwf.sh"]