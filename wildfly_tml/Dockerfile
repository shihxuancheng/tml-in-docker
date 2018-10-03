#FROM shihxuancheng/wildfly-base:latest
ARG BASE_IMAGE=khhwtml02t.wanhai.com:8182/jboss/wildfly-base:latest
FROM $BASE_IMAGE

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize modules
RUN cd ${JBOSS_HOME}/config/modules && ./make_modules.sh

#customize settings
RUN chmod -R 777 ${JBOSS_HOME}/config && cd ${JBOSS_HOME}/config/initial && ./setup.sh

#cleanup
RUN rm -rf ${JBOSS_HOME}/config