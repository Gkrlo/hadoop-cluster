#!/bin/bash

#launch the script with "sudo"

#remove ssh-key
ssh-keygen -f "/root/.ssh/known_hosts" -R [localhost]:2221
ssh-keygen -f "/root/.ssh/known_hosts" -R [localhost]:2222
ssh-keygen -f "/root/.ssh/known_hosts" -R [localhost]:2223
ssh-keygen -f "/root/.ssh/known_hosts" -R [localhost]:2224

#setting up containers
docker-compose up -d

#copy ssh-key to hosts
ssh-copy-id -f -p 2221 root@localhost
ssh-copy-id -f -p 2222 root@localhost
ssh-copy-id -f -p 2223 root@localhost
ssh-copy-id -f -p 2224 root@localhost
