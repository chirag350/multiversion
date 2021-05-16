# MultiVersion Release Entrypoint.sh
# By Dviih
# dviih.technology/multiversion | dviih@dviih.email

#!/bin/sh
cd /home/container
echo "MultiVersion"
echo "By Dviih (dviih.technology/multiversion)"
java -version
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"
echo "eula=true" > eula.txt
${MODIFIED_STARTUP}
