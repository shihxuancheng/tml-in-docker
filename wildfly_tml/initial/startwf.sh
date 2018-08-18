#variables
IPADDRESS=$(hostname -i)
/opt/jboss/wildfly/bin/standalone.sh -c ${WF_CONFIG} -b ${IPADDRESS} -Djboss.bind.address.management=${IPADDRESS}


