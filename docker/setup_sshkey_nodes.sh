#!/bin/bash

#remove ssh-key
ssh-keygen -f "/home/giancarlo/.ssh/known_hosts" -R [192.168.33.11]
ssh-keygen -f "/home/giancarlo/.ssh/known_hosts" -R [192.168.33.12]
ssh-keygen -f "/home/giancarlo/.ssh/known_hosts" -R [192.168.33.13]
ssh-keygen -f "/home/giancarlo/.ssh/known_hosts" -R [192.168.33.14]

docker-compose up -d

#copy ssh-key to hosts
ssh-copy-id -f root@192.168.33.11
ssh-copy-id -f root@192.168.33.12
ssh-copy-id -f root@192.168.33.13
ssh-copy-id -f root@192.168.33.14
