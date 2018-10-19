# wildfly-tml #
[khhwtml02t.wanhai.com:8182/jboss/wildfly-tml](http://khhwtml02t.wanhai.com:8181/service/rest/repository/browse/tml-release/v2/jboss/wildfly-tml/tags/)  
定義TML System modules & cnfigurations，所有與TML系統相關設定及改變可在此層進行異動

### Base Image

[khhwtml02t.wanhai.com:8182/jboss/wildfly-base/wildfly-base](http://khhwtml02t.wanhai.com:8181/service/rest/repository/browse/tml-release/v2/jboss/wildfly-base/tags/)


### Configurations
1. 預先在 **${JBOSS_HOME}'/standalone/deployments/** 建立**WHL_TML.ear**
   
        WHL_TML.ear
            |-META-INF
            |    |-application.xml
            |    |-tml-config.xml
            |
            |-lib
            |   |-tml-utility.jar
            |   |-tml-security.jar    
            |
            |-whl-biztml.jar
    各系統模組war檔均deploy至**WHL_TML.ear/**


2. 新增**standalone-minimal.xml** (僅載入必要 extensions)


### Predefined Modules
Location:  **${JBOSS_HOME}/modules/**
| Name                   | Version |
| ---------------------- | ------- |
| com.wanhai.base        | 1.0.0   |
| com.wanhai.zk          | 1.0.0   |
| com.wanhai.tml.bizbean | 0.1.0   |
| com.wanhai.tml.vo      | 0.1.0   |