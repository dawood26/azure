#!/bin/sh
semanage port -a -t ssh_port_t -p tcp 2222
echo "Port 2222" >> /etc/ssh/sshd_config
systemctl restart sshd 
semanage port -a -t ssh_port_t -p tcp 2222 && echo "Port 2222" >> /etc/ssh/sshd_config &&  systemctl restart sshd 
