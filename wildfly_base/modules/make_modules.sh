#variablies
WF_MODULE_PATH=${JBOSS_HOME}'/modules'
ZK8_VER='8.0.2.2'
ZK7_VER='7.0.3'

#setup module of mysql jdbc driver(5.1.38)
echo 'Download mysql jdbc jdbc driver =>'
mkdir -p ${WF_MODULE_PATH}/com/mysql/jdbc/main
curl -# -o ${WF_MODULE_PATH}/com/mysql/jdbc/main/mysql-connector-java.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.38/mysql-connector-java-5.1.38.jar
cp ./module_jdbc_mysql.xml ${WF_MODULE_PATH}/com/mysql/jdbc/main/module.xml

#setup module of oracle jdbc driver(11.1.0.7.0)
#oracle jdbc driver 12.0.3.0與DBHandler有不相容問題(default date format=yyyy-mm-dd無法透過alert serssion改變)
echo 'Download oracle jdbc driver =>'
mkdir -p ${WF_MODULE_PATH}/com/oracle/jdbc/main
curl -# -o ${WF_MODULE_PATH}/com/oracle/jdbc/main/ojdbc6.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/com/oracle/jdbc/11.1.0.7.0/jdbc-11.1.0.7.0.jar
cp ./module_jdbc_oracle.xml ${WF_MODULE_PATH}/com/oracle/jdbc/main/module.xml

#setup org.apache.commons.fileupload
echo 'Download jars of org.apache.commons.fileupload =>'
mkdir -p ${WF_MODULE_PATH}/org/apache/commons/fileupload/main
curl -# -o ${WF_MODULE_PATH}/org/apache/commons/fileupload/main/commons-fileupload.jar http://central.maven.org/maven2/commons-fileupload/commons-fileupload/1.2.2/commons-fileupload-1.2.2.jar
cp ./module_commons_fileupload.xml ${WF_MODULE_PATH}/org/apache/commons/fileupload/main/module.xml

#setup zk module(7.0.3)
echo 'Download jars of zk-'${ZK7_VER} '=>'
mkdir -p ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/zcommon.jar http://central.maven.org/maven2/org/zkoss/common/zcommon/$ZK7_VER/zcommon-$ZK7_VER.jar  
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/zweb.jar http://central.maven.org/maven2/org/zkoss/common/zweb/$ZK7_VER/zweb-$ZK7_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/zul.jar http://central.maven.org/maven2/org/zkoss/zk/zul/$ZK7_VER/zul-$ZK7_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/zk.jar http://central.maven.org/maven2/org/zkoss/zk/zk/$ZK7_VER/zk-$ZK7_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/zkplus.jar http://central.maven.org/maven2/org/zkoss/zk/zkplus/$ZK7_VER/zkplus-$ZK7_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/zhtml.jar http://central.maven.org/maven2/org/zkoss/zk/zhtml/$ZK7_VER/zhtml-$ZK7_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/zkbind.jar http://central.maven.org/maven2/org/zkoss/zk/zkbind/$ZK7_VER/zkbind-$ZK7_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/zel.jar http://central.maven.org/maven2/org/zkoss/common/zel/$ZK7_VER/zel-$ZK7_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/silvertail.jar http://central.maven.org/maven2/org/zkoss/theme/silvertail/$ZK7_VER/silvertail-$ZK7_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/sapphire.jar http://central.maven.org/maven2/org/zkoss/theme/sapphire/$ZK7_VER/sapphire-$ZK7_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/zsoup.jar http://mavensync.zkoss.org/maven2/org/zkoss/zsoup/1.8.2.5/zsoup-1.8.2.5.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/bsh.jar http://central.maven.org/maven2/org/apache-extras/beanshell/bsh/2.0b6/bsh-2.0b6.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/slf4j-api.jar http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/slf4j-jdk14.jar http://central.maven.org/maven2/org/slf4j/slf4j-jdk14/1.7.5/slf4j-jdk14-1.7.5.jar 
cp ./module_zk7.xml ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/module.xml

#setup zk module(8.0.2.2)
echo 'Download jars of zk-'${ZK8_VER} '=>'
mkdir -p ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zcommon.jar http://central.maven.org/maven2/org/zkoss/common/zcommon/$ZK8_VER/zcommon-$ZK8_VER.jar  
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zweb.jar http://central.maven.org/maven2/org/zkoss/common/zweb/$ZK8_VER/zweb-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zul.jar http://central.maven.org/maven2/org/zkoss/zk/zul/$ZK8_VER/zul-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zk.jar http://central.maven.org/maven2/org/zkoss/zk/zk/$ZK8_VER/zk-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zkplus.jar http://central.maven.org/maven2/org/zkoss/zk/zkplus/$ZK8_VER/zkplus-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zhtml.jar http://central.maven.org/maven2/org/zkoss/zk/zhtml/$ZK8_VER/zhtml-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zkbind.jar http://central.maven.org/maven2/org/zkoss/zk/zkbind/$ZK8_VER/zkbind-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zel.jar http://central.maven.org/maven2/org/zkoss/common/zel/$ZK8_VER/zel-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/silvertail.jar http://central.maven.org/maven2/org/zkoss/theme/silvertail/$ZK8_VER/silvertail-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/sapphire.jar http://central.maven.org/maven2/org/zkoss/theme/sapphire/$ZK8_VER/sapphire-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zsoup.jar http://mavensync.zkoss.org/maven2/org/zkoss/zsoup/1.8.2.5/zsoup-1.8.2.5.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/bsh.jar http://central.maven.org/maven2/org/apache-extras/beanshell/bsh/2.0b6/bsh-2.0b6.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/slf4j-api.jar http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/slf4j-jdk14.jar http://central.maven.org/maven2/org/slf4j/slf4j-jdk14/1.7.5/slf4j-jdk14-1.7.5.jar 
cp ./module_zk8.xml ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/module.xml

ZK8_VER='8.6.0.1'
#setup zk module(8.6.0.1)
echo 'Download jars of zk-'${ZK8_VER} '=>'
mkdir -p ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zcommon.jar http://central.maven.org/maven2/org/zkoss/common/zcommon/$ZK8_VER/zcommon-$ZK8_VER.jar  
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zweb.jar http://central.maven.org/maven2/org/zkoss/common/zweb/$ZK8_VER/zweb-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zul.jar http://central.maven.org/maven2/org/zkoss/zk/zul/$ZK8_VER/zul-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zk.jar http://central.maven.org/maven2/org/zkoss/zk/zk/$ZK8_VER/zk-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zkplus.jar http://central.maven.org/maven2/org/zkoss/zk/zkplus/$ZK8_VER/zkplus-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zhtml.jar http://central.maven.org/maven2/org/zkoss/zk/zhtml/$ZK8_VER/zhtml-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zkbind.jar http://central.maven.org/maven2/org/zkoss/zk/zkbind/$ZK8_VER/zkbind-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zel.jar http://central.maven.org/maven2/org/zkoss/common/zel/$ZK8_VER/zel-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/silvertail.jar http://central.maven.org/maven2/org/zkoss/theme/silvertail/$ZK8_VER/silvertail-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/sapphire.jar http://central.maven.org/maven2/org/zkoss/theme/sapphire/$ZK8_VER/sapphire-$ZK8_VER.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/zsoup.jar http://mavensync.zkoss.org/maven2/org/zkoss/zsoup/1.8.2.5/zsoup-1.8.2.5.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/bsh.jar http://central.maven.org/maven2/org/apache-extras/beanshell/bsh/2.0b6/bsh-2.0b6.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/slf4j-api.jar http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.jar 
curl -# -o ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/slf4j-jdk14.jar http://central.maven.org/maven2/org/slf4j/slf4j-jdk14/1.7.5/slf4j-jdk14-1.7.5.jar 
cp ./module_zk_${ZK8_VER}.xml ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/module.xml


#setup default slot of zk module(default is zk8)
mkdir ${WF_MODULE_PATH}/org/zkoss/zk/main && cp ./module_zk.xml ${WF_MODULE_PATH}/org/zkoss/zk/main/module.xml

#setup module google gson(2.7)
echo 'Download jars of google gson =>'
mkdir -p ${WF_MODULE_PATH}/com/google/gson/main
curl -# -o ${WF_MODULE_PATH}/com/google/gson/main/gson-2.7.jar http://central.maven.org/maven2/com/google/code/gson/gson/2.7/gson-2.7.jar
cp ./module_gson.xml ${WF_MODULE_PATH}/com/google/gson/main/module.xml

#setup module of apache commons-logging (1.1.3)
echo 'Download jars of commons-logging =>'
mkdir -p ${WF_MODULE_PATH}/org/apache/commons/logging/1.1.3
curl -# -o ${WF_MODULE_PATH}/org/apache/commons/logging/1.1.3/commons-logging-1.1.3.jar http://central.maven.org/maven2/commons-logging/commons-logging/1.1.3/commons-logging-1.1.3.jar
cp ./module_commons_logging_113.xml ${WF_MODULE_PATH}/org/apache/commons/logging/1.1.3/module.xml
#setup default slot of apache commons-logging(default is 1.1.3)
mkdir ${WF_MODULE_PATH}/org/apache/commons/main && cp ./module_commons_logging.xml ${WF_MODULE_PATH}/org/apache/commons/main/module.xml

#setup module of apache commons-net(3.6)
echo 'Download jars of commons-net =>'
mkdir -p ${WF_MODULE_PATH}/org/apache/commons/net/main
curl -# -o ${WF_MODULE_PATH}/org/apache/commons/net/main/commons-net-3.6.jar http://central.maven.org/maven2/commons-net/commons-net/3.6/commons-net-3.6.jar
cp ./module_commons_net.xml ${WF_MODULE_PATH}/org/apache/commons/net/main/module.xml

#setup module of apache commons-digester(1.6)
echo 'Download jars of commons-digester =>'
mkdir -p ${WF_MODULE_PATH}/org/apache/commons/digester/main
curl -# -o ${WF_MODULE_PATH}/org/apache/commons/digester/main/commons-digester.jar http://central.maven.org/maven2/commons-digester/commons-digester/1.6/commons-digester-1.6.jar
cp ./module_commons_digester.xml ${WF_MODULE_PATH}/org/apache/commons/digester/main/module.xml

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

#setup module of jasperreports-fonts
echo 'Download jars of jasperreports-fonts=>'
mkdir -p ${WF_MODULE_PATH}/net/sf/jasperreports/fonts/main
curl -# -o ${WF_MODULE_PATH}/net/sf/jasperreports/fonts/main/jasperreports-fonts.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/net/sf/jasperreports/jasperreports-fonts/1.0.0/jasperreports-fonts-1.0.0.jar
curl -# -o ${WF_MODULE_PATH}/net/sf/jasperreports/fonts/main/itext.jar http://central.maven.org/maven2/com/lowagie/itext/2.1.7/itext-2.1.7.jar
cp ./module_jasperreports_font.xml ${WF_MODULE_PATH}/net/sf/jasperreports/fonts/main/module.xml




