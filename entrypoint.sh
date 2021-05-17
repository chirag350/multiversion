# MultiVersion Release Entrypoint.sh
# By Dviih
# dviih.technology/multiversion | dviih@dviih.email

#!/bin/bash
cd /home/container
echo "MultiVersion"
echo "By Dviih (dviih.technology/multiversion)"
if [[ -f "$SERVER_JARFILE" ]]
then
    echo "You don't have a $SERVER_JARFILE please select a version on startup tab then reinstall the server."
fi
java -version
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"
echo "eula=true" > eula.txt
${MODIFIED_STARTUP}
