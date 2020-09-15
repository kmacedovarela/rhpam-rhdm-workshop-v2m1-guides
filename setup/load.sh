#!/bin/bash

TMP_PROJ="dummy-$RANDOM"
oc new-project $TMP_PROJ
oc create route edge dummy --service=dummy --port=8080 -n $TMP_PROJ
ROUTE=$(oc get route dummy -o=go-template --template='{{ .spec.host }}' -n $TMP_PROJ)
HOSTNAME_SUFFIX=$(echo $ROUTE | sed 's/^dummy-'${TMP_PROJ}'\.//g')
oc delete project $TMP_PROJ
MASTER_URL=$(oc whoami --show-server)
CONSOLE_URL=$(oc whoami --show-console)
MYDIR=`pwd`

for i in {1..50} ; do

    TMPWORK=$(mktemp)
    sed 's/WORKSPACENAME/WORKSPACE'${i}'/g' $MYDIR/../files/workspace.json > $TMPWORK

    curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json'" -d @${TMPWORK} \
    "http://codeready-che.${HOSTNAME_SUFFIX}/api/workspace?start-after-create=true"
    rm -f $TMPWORK
done