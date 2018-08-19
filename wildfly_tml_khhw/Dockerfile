FROM khhwtml02t.wanhai.com:8182/jboss/wildfly-tml:0.1.0
LABEL maintainer="richard_shih@wanhai.com"

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize settings
RUN cd ${JBOSS_HOME}/config/initial && ./setup.sh

#cleanup
RUN rm -rf ${JBOSS_HOME}/config

COPY --chown=jboss WHL_TML.ear ${JBOSS_HOME}/standalone/deployments/WHL_TML.ear

EXPOSE 8080 9990

CMD ["sh","-c","/opt/jboss/wildfly/bin/startwf.sh"]