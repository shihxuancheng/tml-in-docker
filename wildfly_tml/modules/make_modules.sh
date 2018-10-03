#variablies
WF_MODULE_PATH=${JBOSS_HOME}'/modules'

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