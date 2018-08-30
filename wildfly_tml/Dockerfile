#FROM shihxuancheng/wildfly-base:latest
FROM khhwtml02t.wanhai.com:8182/jboss/wildfly-base:latest

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize settings
RUN chmod -R 777 ${JBOSS_HOME}/config && cd ${JBOSS_HOME}/config/initial && ./setup.sh

#cleanup
RUN rm -rf ${JBOSS_HOME}/config