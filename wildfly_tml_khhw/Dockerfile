FROM khhwtml02t.wanhai.com:8182/jboss/wildfly-tml:latest

#set environment
ENV JAVA_OPTS="-Dcom.wanhai.tml.yard.current=KHHW"

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize settings & cleanup
RUN chmod -R 777 ${JBOSS_HOME}/config && cd ${JBOSS_HOME}/config/initial && ./setup.sh && rm -rf ${JBOSS_HOME}/config

# COPY --chown=jboss WHL_TML.ear ${JBOSS_HOME}/standalone/deployments/WHL_TML.ear
