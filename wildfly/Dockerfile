FROM jboss/wildfly:11.0.0.Final

# Environment variable with default value
# ARG WAR_FILE_FROM=appfile.war
# ARG WAR_FILE_DEPLOY=${WAR_FILE_FROM}
LABEL maintainer="richard_shih@wanhai.com"

#default user is 'jboss'
#USER jboss

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize modules
RUN cd ${JBOSS_HOME}/config/modules && ./make_modules.sh

#customize settings
RUN cd ${JBOSS_HOME}/config/initial && ./setup.sh

#cleanup
RUN rm -rf ${JBOSS_HOME}/config

# Add your application to the deployment folder
# COPY ${WAR_FILE_FROM} ${JBOSS_HOME}/standalone/deployments/${WAR_FILE_DEPLOY}

EXPOSE 8080 9990

CMD ["sh","-c","/opt/jboss/wildfly/bin/startwf.sh"]