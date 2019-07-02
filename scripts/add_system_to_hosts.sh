#!/bin/bash

system_ip=${1}
ssh-copy-id ${system_ip}
ssh ${system_ip} "sudo sed -i 's/^#PermitRootLogin/PermitRootLogin yes/g' /etc/ssh/sshd_config"
ssh ${system_ip} "sudo systemctl restart sshd"
echo "${system_ip}" >> hosts
