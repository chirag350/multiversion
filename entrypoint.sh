# MultiVersion | dviih.technology/multiversion | dviih@dviih.email

#!/bin/bash
# Default the TZ environment variable to UTC.
TZ=${TZ:-UTC}
export TZ

# Set environment variable that holds the Internal Docker IP
INTERNAL_IP=$(ip route get 1 | awk '{print $NF;exit}')
export INTERNAL_IP

cd /home/container || exit 1 # exit if /home/container doesnt exist
echo "MultiVersion | dviih.technology/multiversion"
java -version
MODIFIED_STARTUP=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")
echo "\033[1m\033[33mcontainer@pterodactyl~ \033[0m%s\n $MODIFIED_STARTUP"
echo "eula=true" | tee eula.txt > /dev/null
${MODIFIED_STARTUP}
