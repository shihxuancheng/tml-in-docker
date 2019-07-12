#variablies
WF_MODULE_PATH=${JBOSS_HOME}'/modules'

# #setup module of apache commons collections4
echo 'Download jars of org.apache.commons.collections4=>'
mkdir -p ${WF_MODULE_PATH}/org/apache/commons/collections4/main
curl -# -o ${WF_MODULE_PATH}/org/apache/commons/collections4/main/commons-collections4-4.1.jar http://khhwtml02t.wanhai.com:8181/repository/maven-public/org/apache/commons/commons-collections4/4.1/commons-collections4-4.1.jar
cp ./module_collections4.xml ${WF_MODULE_PATH}/org/apache/commons/collections4/main/module.xml

# #setup module of apache xmlbeans
echo 'Download jars of org.apache.xmlbeans=>'
mkdir -p ${WF_MODULE_PATH}/org/apache/xmlbeans/main
curl -# -o ${WF_MODULE_PATH}/org/apache/xmlbeans/main/xmlbeans-2.6.0.jar http://khhwtml02t.wanhai.com:8181/repository/maven-public/org/apache/xmlbeans/xmlbeans/2.6.0/xmlbeans-2.6.0.jar
cp ./module_xmlbeans.xml ${WF_MODULE_PATH}/org/apache/xmlbeans/main/module.xml

# #setup module of poi
echo 'Download jars of org.apache.poi=>'
mkdir -p ${WF_MODULE_PATH}/org/apache/poi/3.17
curl -# -o ${WF_MODULE_PATH}/org/apache/poi/3.17/poi-3.17.jar http://khhwtml02t.wanhai.com:8181/repository/maven-public/org/apache/poi/poi/3.17/poi-3.17.jar
curl -# -o ${WF_MODULE_PATH}/org/apache/poi/3.17/poi-ooxml-3.17.jar http://khhwtml02t.wanhai.com:8181/repository/maven-public/org/apache/poi/poi-ooxml/3.17/poi-ooxml-3.17.jar
curl -# -o ${WF_MODULE_PATH}/org/apache/poi/3.17/poi-ooxml-schemas-3.17.jar http://khhwtml02t.wanhai.com:8181/repository/maven-public/org/apache/poi/poi-ooxml-schemas/3.17/poi-ooxml-schemas-3.17.jar
cp ./module_poi_317.xml ${WF_MODULE_PATH}/org/apache/poi/3.17/module.xml
#setup default slot of poi module(default is 3.17)
mkdir ${WF_MODULE_PATH}/org/apache/poi/main && cp ./module_poi.xml ${WF_MODULE_PATH}/org/apache/poi/main/module.xml

#setup module of wanhai base
echo 'Download jars of com.wanhai.base=>'
mkdir -p ${WF_MODULE_PATH}/com/wanhai/base/main
curl -# -o ${WF_MODULE_PATH}/com/wanhai/base/main/whl-utility.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/com/wanhai/base/whl-utility/1.0.0/whl-utility-1.0.0.jar
curl -# -o ${WF_MODULE_PATH}/com/wanhai/base/main/whl-security-fake.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/com/wanhai/base/whl-security/1.0.0/whl-security-1.0.0.jar
curl -# -o ${WF_MODULE_PATH}/com/wanhai/base/main/whl-biz.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/com/wanhai/base/whl-biz/1.0.0/whl-biz-1.0.0.jar
cp ./module_wanhai_base.xml ${WF_MODULE_PATH}/com/wanhai/base/main/module.xml

#setup module of wanhai zk base
echo 'Download jars of com.wanhai.zk=>'
mkdir -p ${WF_MODULE_PATH}/com/wanhai/zk/main
curl -# -o ${WF_MODULE_PATH}/com/wanhai/zk/main/whl-zk-template.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/com/wanhai/zk/whl-template/1.0.0/whl-template-1.0.0.jar
curl -# -o ${WF_MODULE_PATH}/com/wanhai/zk/main/whl-zk-base.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/com/wanhai/zk/whl-zk-base/1.0.0/whl-zk-base-1.0.0.jar
cp ./module_wanhai_zk.xml ${WF_MODULE_PATH}/com/wanhai/zk/main/module.xml

#setup module of tml vo
echo 'Download jars of com.wanhai.tml.vo=>'
mkdir -p ${WF_MODULE_PATH}/com/wanhai/tml/vo/main
curl -# -o ${WF_MODULE_PATH}/com/wanhai/tml/vo/main/whl-vo-sec.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/com/wanhai/tml/whl-vo-sec/0.1.0/whl-vo-sec-0.1.0.jar
curl -# -o ${WF_MODULE_PATH}/com/wanhai/tml/vo/main/whl-vo-tml.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/com/wanhai/tml/whl-vo-tml/0.1.0/whl-vo-tml-0.1.0.jar
cp ./module_tml_vo.xml ${WF_MODULE_PATH}/com/wanhai/tml/vo/main/module.xml

#setup module of tml bizbean
echo 'Download jars of com.wanhai.tml.bizbean=>'
mkdir -p ${WF_MODULE_PATH}/com/wanhai/tml/bizbean/main
curl -# -o ${WF_MODULE_PATH}/com/wanhai/tml/bizbean/main/whl-biztml.jar http://khhwtml02t.wanhai.com:8181/repository/maven-releases/com/wanhai/tml/whl-biztml/0.1.0/whl-biztml-0.1.0.jar
cp ./module_tml_bizbean.xml ${WF_MODULE_PATH}/com/wanhai/tml/bizbean/main/module.xml