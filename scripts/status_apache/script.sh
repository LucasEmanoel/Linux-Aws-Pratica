#!/bin/bash
# path: scripts/status_apache/script.sh
# description: exemplo para verificar status de serviço no linux.

SERVICE="httpd"
STATUS="$(systemctl status $SERVICE | awk '/Active:/ {print $2 FS $3}')"
DATE=`date +%F-%T`

if [[ "${STATUS}" == "active (running)" ]]; then
        $(mkdir -p /log) echo "Data e Hora: $DATE - Serviço: $SERVICE | Status: $STATUS | Sucesso: O Servidor Está ONLINE! " > /log/SERVICO-ONLINE-$DATE.txt
else
        $(mkdir -p /log) echo "Data e Hora: $DATE - Serviço: $SERVICE | Status: $STATUS | Erro: O Servidor Está OFFLINE! " > /log/SERVICO-OFFLINE-$DATE.txt
        exit 1
fi
