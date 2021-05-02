# Multi Versin Entrypoint.sh
# By Dviih
# dviih.technology/multiversion

#!/bin/sh
cd /home/container
echo "Multi Version Beta"
echo "By Dviih (dviih.technology/multiversion)"
/java/bin/java -version
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"
${MODIFIED_STARTUP}
