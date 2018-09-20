FROM ${docker_rep_url}/jboss/wildfly-tml:latest

#set environment
ENV JAVA_OPTS="-Dcom.wanhai.tml.yard.current=KHHW -Dsentry.dsn=http://d5756310a31a47909989df81461b1da1:bfb176b900fb498c8e3b60d31d12c23f@khhwtml02t.wanhai.com:9000/2 -Dsentry.stacktrace.app.packages=com.wanhai.tml -Dsentry.release=0.1.0 -Dsentry.environment=${profile}"

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize settings & cleanup
RUN chmod -R 777 ${JBOSS_HOME}/config && cd ${JBOSS_HOME}/config/initial && ./setup.sh && rm -rf ${JBOSS_HOME}/config

# COPY --chown=jboss WHL_TML.ear ${JBOSS_HOME}/standalone/deployments/WHL_TML.ear
