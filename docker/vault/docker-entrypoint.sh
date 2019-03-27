#!/bin/sh
echo "Starting Vault configuration"
sleep 5;
# Enable approle end-point
echo "Enabling Approle"
curl -X POST -H "X-Vault-Token:DevelopmentVault" --data "{\"type\":\"approle\"}" http://172.17.0.1:8200/v1/sys/auth/approle
echo "Registering vault service"
curl -X PUT -d @service.json http://172.17.0.1:8500/v1/agent/service/register

