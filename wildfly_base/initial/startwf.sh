#variables
IPADDRESS=$(hostname -i)
export JAVA_OPTS="${JAVA_OPTS} ${EXTRA_JAVA_OPTS} -Djboss.bind.address.management=${IPADDRESS}"
/opt/jboss/wildfly/bin/standalone.sh -c ${WF_CONFIG} -b ${IPADDRESS}


