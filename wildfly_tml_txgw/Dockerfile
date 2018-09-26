ARG BASE_IMAGE=khhwtml02t.wanhai.com:8182/jboss/wildfly-tml:latest
FROM $BASE_IMAGE

#set profile(sat/uat/production)
ARG profile
#sel environment (khhw/txgw/tyow)
ARG environment

#set environment
ENV JAVA_OPTS="-Xms64m -Xmx512m -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=256m -XX:+UseParallelGC -Djava.net.preferIPv4Stack=true -Djboss.modules.system.pkgs=$JBOSS_MODULES_SYSTEM_PKGS -Djava.awt.headless=true -Dcom.wanhai.tml.yard.current=${environment} -Dsentry.dsn=http://d5756310a31a47909989df81461b1da1:bfb176b900fb498c8e3b60d31d12c23f@khhwtml02t.wanhai.com:9000/2 -Dsentry.stacktrace.app.packages=com.wanhai.tml -Dsentry.release=0.1.0 -Dsentry.environment=${profile}"

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize settings & cleanup
RUN chmod -R 777 ${JBOSS_HOME}/config && cd ${JBOSS_HOME}/config/initial && ./setup.sh && rm -rf ${JBOSS_HOME}/config

# COPY --chown=jboss WHL_TML.ear ${JBOSS_HOME}/standalone/deployments/WHL_TML.ear
