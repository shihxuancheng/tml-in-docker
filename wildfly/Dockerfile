FROM jboss/wildfly

# Environment variable with default value
ARG WAR_FILE_FROM=appfile.war
ARG WAR_FILE_DEPLOY=${WAR_FILE_FROM}

#RUN echo ${APP_FILE}

USER root
# RUN yum install net-tools -y

#prepare tmp dir
COPY modules/*.xml /tmp/modules

#create additional modules
RUN /tml/modules/make_module.sh

#setup zk module(8.0.2.2)
RUN mkdir -p /zk_lib && \
mkdir -p /opt/jboss/wildfly/modules/system/layers/base/org/zkoss/zk/main && \
curl -#L https://www.zkoss.org/zkdownload/downloadEvalFile?id=1884780989 | bsdtar -xf- -C /zk_lib && \
find /zk_lib/zk-bin-8.0.2.2/dist/lib -name '*.jar' | xargs -I{} cp {} /opt/jboss/wildfly/modules/system/layers/base/org/zkoss/zk/main && \
rm -rf ./zk_lib
COPY module_zk8.xml /opt/jboss/wildfly/modules/system/layers/base/org/zkoss/zk/main/module.xml

#setup zk module(7.0.3)
RUN mkdir -p /zk_lib && cd /zk_lib && \
curl -o zcommon.jar http://central.maven.org/maven2/org/zkoss/common/zcommon/7.0.3/zcommon-7.0.3.jar && \ 
curl -o zweb.jar http://central.maven.org/maven2/org/zkoss/common/zweb/7.0.3/zweb-7.0.3.jar && \
curl -o zul.jar http://central.maven.org/maven2/org/zkoss/zk/zul/7.0.3/zul-7.0.3.jar && \
curl -o zk.jar http://central.maven.org/maven2/org/zkoss/zk/zk/7.0.3/zk-7.0.3.jar && \
curl -o zkplus.jar http://central.maven.org/maven2/org/zkoss/zk/zkplus/7.0.3/zkplus-7.0.3.jar && \
curl -o zhtml.jar http://central.maven.org/maven2/org/zkoss/zk/zhtml/7.0.3/zhtml-7.0.3.jar && \
curl -o zkbind.jar http://central.maven.org/maven2/org/zkoss/zk/zkbind/7.0.3/zkbind-7.0.3.jar && \
curl -o zel.jar http://central.maven.org/maven2/org/zkoss/common/zel/7.0.3/zel-7.0.3.jar && \
curl -o silvertail.jar http://central.maven.org/maven2/org/zkoss/theme/silvertail/7.0.3/silvertail-7.0.3.jar && \
curl -o sapphire.jar http://central.maven.org/maven2/org/zkoss/theme/sapphire/7.0.3/sapphire-7.0.3.jar && \
curl -o zsoup.jar http://mavensync.zkoss.org/maven2/org/zkoss/zsoup/1.8.2.5/zsoup-1.8.2.5.jar && \
curl -o bsh.jar http://central.maven.org/maven2/org/apache-extras/beanshell/bsh/2.0b6/bsh-2.0b6.jar && \
curl -o slf4j-api.jar http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.jar && \
curl -o slf4j-jdk14.jar http://central.maven.org/maven2/org/slf4j/slf4j-jdk14/1.7.5/slf4j-jdk14-1.7.5.jar && \

COPY module_zk7.xml /opt/jboss/wildfly/modules/system/layers/base/org/zkoss/zk/main/module.xml

# Add your application to the deployment folder
COPY ${WAR_FILE_FROM} /opt/jboss/wildfly/standalone/deployments/${WAR_FILE_DEPLOY}
COPY standalone-ha.xml /opt/jboss/wildfly/standalone/configuration/standalone-ha.xml
COPY startwf-ha.sh /opt/jboss/wildfly/bin/startwf-ha.sh

# Add user for adminstration purpose
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin123 --silent
USER jboss

EXPOSE 8080 9990

CMD ["sh","-c","/opt/jboss/wildfly/bin/startwf-ha.sh"]