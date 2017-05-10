#!/bin/bash

#launch the script with "sudo"

#remove ssh-key
ssh-keygen -f "/home/giancarlo/.ssh/known_hosts" -R [localhost]:2221
ssh-keygen -f "/home/giancarlo/.ssh/known_hosts" -R [localhost]:2222
ssh-keygen -f "/home/giancarlo/.ssh/known_hosts" -R [localhost]:2223
ssh-keygen -f "/home/giancarlo/.ssh/known_hosts" -R [localhost]:2224

#copy ssh-key to hosts
ssh-copy-id -f -p 2221 vagrant@localhost
ssh-copy-id -f -p 2222 vagrant@localhost
ssh-copy-id -f -p 2223 vagrant@localhost
ssh-copy-id -f -p 2224 vagrant@localhost
