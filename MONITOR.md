# Performance Monitoring #

Tools use to monitoring performance of Wildfly server 

- ### VirtualVM ### 
     
```bash
    ${JDK_HOME}\bin\jvisualvm.exe -cp:a ${JBOSS_HOME}\bin\client\jboss-client.jar
```

- ### JConsole ###
```bash
    ${JBOSS_HOME}\bin\jconsole.bat
```

- ### Java Mission Control ###
```bash
    ${JDK_HOME}\bin\jmc.exe -vmargs -Xbootclasspath/a:${JBOSS_HOME}\bin\client\jboss-client.jar
```

### JMX Connect String ###
    service:jmx:remote+http://[IP-Address|Hostname]:9990