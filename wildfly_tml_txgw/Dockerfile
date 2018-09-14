FROM khhwtml02t.wanhai.com:8182/jboss/wildfly-tml:latest

#set environment
ENV EXTRA_JAVA_OPTS="-Dcom.wanhai.tml.yard.current=TXGW -Dsentry.dsn=http://8cec478302e84d9ca1631cdb86ae1822:b3466280b00543b5b047e8d16840182e@khhwtml01t.wanhai.com:9000/2 -Dsentry.stacktrace.app.packages=com.wanhai.tml -Dsentry.release=0.1.0 -Dsentry.environment=uat"

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize settings & cleanup
RUN chmod -R 777 ${JBOSS_HOME}/config && cd ${JBOSS_HOME}/config/initial && ./setup.sh && rm -rf ${JBOSS_HOME}/config

# COPY --chown=jboss WHL_TML.ear ${JBOSS_HOME}/standalone/deployments/WHL_TML.ear
