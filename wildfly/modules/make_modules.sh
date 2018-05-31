#variablies
WF_MODULE_PATH='/opt/jboss/wildfly/modules/system/layers/base'
ZK8_VER='8.0.2.2'
ZK7_VER='7.0.3'

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
cp /tmp/modules/module_zk7.xml ${WF_MODULE_PATH}/org/zkoss/zk/${ZK7_VER}/module.xml
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
cp /tmp/modules/module_zk8.xml ${WF_MODULE_PATH}/org/zkoss/zk/${ZK8_VER}/module.xml

mkdir ${WF_MODULE_PATH}/org/zkoss/zk/main && cp /tmp/modules/module_zk.xml ${WF_MODULE_PATH}/org/zkoss/zk/main/module.xml

rm -rf /tmp



