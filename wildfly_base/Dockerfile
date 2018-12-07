FROM jboss/wildfly:11.0.0.Final

# Environment variable with default value
ENV WF_CONFIG="standalone.xml"
ENV TZ="Asia/Taipei"


#for session persistance using
#ENV SESSIONDB_HOST='localhost:3306' SESSIONDB_NAME='wf_sessions' SESSIONDB_USER='session' SESSIONDB_PASS='session'

LABEL maintainer="richard_shih@wanhai.com"

#prepare tmp dir
COPY --chown=jboss . ${JBOSS_HOME}/config

#customize modules
RUN cd ${JBOSS_HOME}/config/modules && ./make_modules.sh

#customize settings
RUN chmod -R 777 ${JBOSS_HOME}/config && cd ${JBOSS_HOME}/config/initial && ./setup.sh

#cleanup
RUN rm -rf ${JBOSS_HOME}/config

EXPOSE 8080 9990

CMD ["sh","-c","/opt/jboss/wildfly/bin/startwf.sh"]
