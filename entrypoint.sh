# MultiVersion | dviih.technology/multiversion | dviih@dviih.email

#!/bin/bash
cd /home/container
echo "MultiVersion | dviih.technology/multiversion"
java -version
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"
echo "eula=true" > eula.txt
${MODIFIED_STARTUP}
