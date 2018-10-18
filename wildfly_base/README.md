# wildfly-base

定義Global modules & configurations，所有全域性的設定及改變可在此層進行異動

### Base Image
[jboss/wildfly:11.0.0.Final](https://hub.docker.com/r/jboss/wildfly/)

- CentOS 7
- Open JDK 1.8
- Wildfly 11.0.0.Final

### Configurations

1.  **${JBOSS_HOME} = /opt/jboss/wildfly**
2. 預設 admin account **admin/wanhai_2**
3. 修改 **$WF_CONFIG** 可切換不同的設定檔

### Predefined Modules

Location:  **${JBOSS_HOME}/modules/**

| Name                          | Version               |
| ----------------------------- | --------------------- |
| org.zkoss.zk                  | 7.0.3                 |
|                               | 8.0.2.2 (**default**) |
| com.google.gson               | 2.7                   |
| com.google.zxing              | 3.2.1                 |
| com.oracle.jdbc               | 11.1.0.7.0            |
| com.mysql.jdbc                | 5.1.38                |
| org.apache.commons.fileupload | 1.2.2                 |
| org.apache.commons.logging    | 1.1.3                 |
| org.apache.commons.net        | 3.6                   |
| org.apache.commons.digester   | 1.6                   |
| org.codehaus.groovy           | 2.4.7                 |
| org.springframework           | 4.0.6                 |
| net.glxn.qrgen                | 2.0                   |
| net.sf.jasperreports          | 4.6.1                 |
| net.sf.jasperreports.fonts    |
| io.sentry                     | 1.7.3                 |
