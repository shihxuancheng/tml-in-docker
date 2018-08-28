#create default EAR Module WHL_TML.ear
earDir=${JBOSS_HOME}'/standalone/deployments/WHL_TML.ear'
earLibDir='lib'
earMetaDir='META-INF'
mkdir -p ${earDir}/${earLibDir} && mkdir -p ${earDir}/${earMetaDir}
#copy libraries to lib path
curl -# -o ${earDir}/${earLibDir}'/commons-logging-1.1.1.jar' http://khhwtml02t.wanhai.com:8181/repository/maven-public/commons-logging/commons-logging/1.1.1/commons-logging-1.1.1.jar
curl -# -o ${earDir}/${earLibDir}'/log4j-1.2.17.jar' http://khhwtml02t.wanhai.com:8181/repository/maven-public/log4j/log4j/1.2.17/log4j-1.2.17.jar
curl -# -o ${earDir}/${earLibDir}'/sentry-log4j-1.7.3.jar' http://khhwtml02t.wanhai.com:8181/repository/maven-public/io/sentry/sentry/1.7.3/sentry-1.7.3.jar
curl -# -o ${earDir}/${earLibDir}'/tml-security.jar' http://khhwtml02t.wanhai.com:8181/repository/maven-public/com/wanhai/tml/tml-security/0.1.0/tml-security-0.1.0.jar
curl -# -o ${earDir}/${earLibDir}'/tml-utility.jar' http://khhwtml02t.wanhai.com:8181/repository/maven-public/com/wanhai/tml/tml-utility/0.1.0/tml-utility-0.1.0.jar
curl -# -o ${earDir}/${earLibDir}'/zuljsp.jar' http://khhwtml02t.wanhai.com:8181/repository/maven-public/org/zkoss/zk/zuljsp/2.6.0/zuljsp-2.6.0.jar
curl -# -o ${earDir}'/whl-biztml.jar' http://khhwtml02t.wanhai.com:8181/repository/maven-public/com/wanhai/tml/whl-biztml/0.1.0/whl-biztml-0.1.0.jar
#copy config files to META-INF
cp -Rf ${JBOSS_HOME}/config/config/${earMetaDir} ${earDir}
#copy config files to wildfly
