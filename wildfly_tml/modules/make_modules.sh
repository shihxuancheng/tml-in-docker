#variablies
WF_MODULE_PATH=${JBOSS_HOME}'/modules'

#setup module google gson(2.7)
echo 'Download jars of google gson =>'
mkdir -p ${WF_MODULE_PATH}/com/google/gson/main
curl -# -o ${WF_MODULE_PATH}/com/google/gson/main/gson-2.7.jar.jar http://central.maven.org/maven2/com/google/code/gson/gson/2.7/gson-2.7.jar
cp ./module_gson.xml ${WF_MODULE_PATH}/com/google/gson/main/module.xml

#setup module of apache commons-logging (1.1.3)
echo 'Download jars of commons-logging =>'
mkdir -p ${WF_MODULE_PATH}/org/apache/commons/logging/1.1.3
curl -# -o ${WF_MODULE_PATH}/org/apache/commons/logging/1.1.3/commons-logging-1.1.3.jar http://central.maven.org/maven2/commons-logging/commons-logging/1.1.3/commons-logging-1.1.3.jar
cp ./module_commons_logging_113.xml ${WF_MODULE_PATH}/org/apache/commons/logging/1.1.3/module.xml
#setup default slot of apache commons-logging(default is 1.1.3)
mkdir ${WF_MODULE_PATH}/org/apache/commons/main && cp ./module_commons_logging.xml ${WF_MODULE_PATH}/org/apache/commons/main/module.xml

#setup module of apache commons-net(3.6)
echo 'Download jars of common-net =>'
mkdir -p ${WF_MODULE_PATH}/org/apache/commons/net/main
curl -# -o ${WF_MODULE_PATH}//org/apache/commons/net/main/commons-net-3.6.jar http://central.maven.org/maven2/commons-net/commons-net/3.6/commons-net-3.6.jar
cp ./module_commons_net.xml ${WF_MODULE_PATH}/org/apache/commons/net/main/module.xml

#setup module of groovy(2.4.7)
echo 'Download jars of groovy=>'
mkdir -p ${WF_MODULE_PATH}/org/codehaus/groovy/main
curl -# -o ${WF_MODULE_PATH}/org/codehaus/groovy/main/groovy-all-2.4.7.jar http://central.maven.org/maven2/org/codehaus/groovy/groovy-all/2.4.7/groovy-all-2.4.7.jar
cp ./module_groovy.xml ${WF_MODULE_PATH}/org/codehaus/groovy/main/module.xml

#setup module of google zxing(3.2.1)
echo 'Download jars of google zxing=>'
mkdir -p ${WF_MODULE_PATH}/com/google/zxing/main
curl -# -o ${WF_MODULE_PATH}/com/google/zxing/main/javase-3.2.1.jar http://central.maven.org/maven2/com/google/zxing/javase/3.2.1/javase-3.2.1.jar
curl -# -o ${WF_MODULE_PATH}/com/google/zxing/main/jcommander-1.48.jar http://central.maven.org/maven2/com/beust/jcommander/1.48/jcommander-1.48.jar
curl -# -o ${WF_MODULE_PATH}/com/google/zxing/main/core-3.2.1.jar http://central.maven.org/maven2/com/google/zxing/core/3.2.1/core-3.2.1.jar
cp ./module_zxing.xml ${WF_MODULE_PATH}/com/google/zxing/main/module.xml

#setup module of qrgen(2.0)
echo 'Download jars of qrgen=>'
mkdir -p ${WF_MODULE_PATH}/net/glxn/qrgen/main
curl -# -o ${WF_MODULE_PATH}/net/glxn/qrgen/main/javase-2.0.jar http://central.maven.org/maven2/net/glxn/qrgen/javase/2.0/javase-2.0.jar
curl -# -o ${WF_MODULE_PATH}/net/glxn/qrgen/main/core-2.0.jar http://central.maven.org/maven2/net/glxn/qrgen/core/2.0/core-2.0.jar
curl -# -o ${WF_MODULE_PATH}/net/glxn/qrgen/main/jfreesvg-2.1.jar http://central.maven.org/maven2/org/jfree/jfreesvg/2.1/jfreesvg-2.1.jar
cp ./module_qrgen.xml ${WF_MODULE_PATH}/net/glxn/qrgen/main/module.xml

#setup module of sentry(1.7.3)
echo 'Download jars of sentry=>'
mkdir -p ${WF_MODULE_PATH}/io/sentry/main
curl -# -o ${WF_MODULE_PATH}/io/sentry/main/sentry-1.7.3.jar http://central.maven.org/maven2/io/sentry/sentry/1.7.3/sentry-1.7.3.jar
curl -# -o ${WF_MODULE_PATH}/io/sentry/main/jackson-core-2.8.7.jar http://central.maven.org/maven2/com/fasterxml/jackson/core/jackson-core/2.8.7/jackson-core-2.8.7.jar
curl -# -o ${WF_MODULE_PATH}/io/sentry/main/slf4j-api-1.7.24.jar http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.24/slf4j-api-1.7.24.jar
cp ./module_sentry.xml ${WF_MODULE_PATH}/io/sentry/main/module.xml

#setup module of springframework(4.0.6)
echo 'Download jars of springframework=>'
mkdir -p ${WF_MODULE_PATH}/org/springframework/4.0.6
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/aopalliance-1.0.jar http://central.maven.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-tx-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-tx/4.0.6.RELEASE/spring-tx-4.0.6.RELEASE.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-context-support-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-context-support/4.0.6.RELEASE/spring-context-support-4.0.6.RELEASE.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-jdbc-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-jdbc/4.0.6.RELEASE/spring-jdbc-4.0.6.RELEASE.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-webmvc-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-webmvc/4.0.6.RELEASE/spring-webmvc-4.0.6.RELEASE.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-web-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-web/4.0.6.RELEASE/spring-web-4.0.6.RELEASE.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-aop-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-aop/4.0.6.RELEASE/spring-aop-4.0.6.RELEASE.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-expression-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-expression/4.0.6.RELEASE/spring-expression-4.0.6.RELEASE.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-context-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-context/4.0.6.RELEASE/spring-context-4.0.6.RELEASE.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-core-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-core/4.0.6.RELEASE/spring-core-4.0.6.RELEASE.jar
curl -# -o ${WF_MODULE_PATH}/org/springframework/4.0.6/spring-beans-4.0.6.RELEASE.jar http://central.maven.org/maven2/org/springframework/spring-beans/4.0.6.RELEASE/spring-beans-4.0.6.RELEASE.jar
cp ./module_spring_406.xml ${WF_MODULE_PATH}/org/springframework/4.0.6/module.xml
#setup default slot of springframework module(default is 4.0.6)
mkdir ${WF_MODULE_PATH}/org/springframework/main && cp ./module_spring.xml ${WF_MODULE_PATH}/org/springframework/main/module.xml

#setup module of jasperreports(4.6.1)
echo 'Download jars of jasperreports=>'
mkdir -p ${WF_MODULE_PATH}/net/sf/jasperreports/6.4.1
curl -# -o ${WF_MODULE_PATH}/net/sf/jasperreports/6.4.1/jasperreports-6.4.1.jar http://central.maven.org/maven2/net/sf/jasperreports/jasperreports/6.4.1/jasperreports-6.4.1.jar
cp ./module_jasperreports_641.xml ${WF_MODULE_PATH}/net/sf/jasperreports/6.4.1/module.xml
#setup default slot of jasperreports module(default is 6.4.1)
mkdir ${WF_MODULE_PATH}/net/sf/jasperreports/main && cp ./module_jasperreports.xml ${WF_MODULE_PATH}/net/sf/jasperreports/main/module.xml

#setup module of jasperreports font

#setup module of wanhai base
#setup module of wanhai zk base
#setup module of tml base
#setup module of tml vo
#setup module of tml bizbean








