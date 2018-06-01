FROM jboss/wildfly

# Environment variable with default value
ARG WAR_FILE_FROM=appfile.war
ARG WAR_FILE_DEPLOY=${WAR_FILE_FROM}

#RUN echo ${APP_FILE}

USER root
# RUN yum install net-tools -y

#prepare tmp dir
COPY ./modules/* /tmp/modules/

#create additional modules
RUN /tmp/modules/make_modules.sh

# Add your application to the deployment folder
COPY ${WAR_FILE_FROM} ${JBOSS_HOME}/standalone/deployments/${WAR_FILE_DEPLOY}
COPY startwf-ha.sh ${JBOSS_HOME}/bin/startwf-ha.sh

# Add user for adminstration purpose
RUN ${JBOSS_HOME}/bin/add-user.sh admin wanhai_2 --silent
USER jboss

EXPOSE 8080 9990

CMD ["sh","-c","/opt/jboss/wildfly/bin/startwf-ha.sh"]