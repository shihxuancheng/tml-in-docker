#variables
IPADDRESS=$(hostname -i)
EXTRA_JAVA_OPTS=$EXTRA_JAVA_OPTS -Djboss.bind.address.management=${IPADDRESS}
/opt/jboss/wildfly/bin/standalone.sh -c ${WF_CONFIG} -b ${IPADDRESS} ${EXTRA_JAVA_OPTS}


