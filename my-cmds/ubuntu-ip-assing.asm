root@MUMAULPK8W013:~# cat /etc/netplan/00-installer-config.yaml
# This is the network config written by 'subiquity'
network:
  #ethernets: {}
  version: 2
  ethernets:
          ens160:
            dhcp4: false
            addresses: [10.10.138.13/24]
            gateway4: 10.10.138.1
            nameservers:
              addresses: [8.8.8.8, 8.8.4.4]
          ens192:
            dhcp4: false
            addresses: [10.203.212.13/24]
root@MUMAULPK8W013:~#

netpaln apply



 