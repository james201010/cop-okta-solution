#!/bin/bash

#cd /Users/lukepete/projects/fsoc_projects/guardian-tenant/oktadev

while :
do
    echo "pushing melt for oktadev solution ..."

    fsoc -v melt push --dump  oktadev-node-cluster-melt.yaml --profile lukepete-guardian-ap
    sleep 30

    echo "pushing children entites for oktadev solution ..."

    fsoc -v melt push --dump  oktadev-0.0.1-melt.yaml --profile lukepete-guardian-ap
    sleep 5

    fsoc -v melt push --dump  oktadev-0.0.2-melt.yaml --profile lukepete-guardian-ap
    sleep 5

    fsoc -v melt push --dump  oktadev-0.0.3-melt.yaml --profile lukepete-guardian-ap
    sleep 5

    fsoc -v melt push --dump  oktadev-0.0.4-melt.yaml --profile lukepete-guardian-ap
    echo "pushed melt for oktadev solution ..."
    sleep 65
   
done