# Add user for adminstration purpose
# ${JBOSS_HOME}/bin/add-user.sh admin wanhai_2 --silent

cp ./startwf.sh ${JBOSS_HOME}/bin/startwf.sh
#session persistance config
# cp ../config/*.* ${JBOSS_HOME}/standalone/configuration/