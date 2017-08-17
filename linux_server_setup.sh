sudo vi /etc/default/keyboard
# And edit XKBOPTIONS="ctrl:swapcaps"

# Then, reconfigure:

sudo dpkg-reconfigure keyboard-configuration

# /etc/network/interface

# add auto enp0s8
# add iface enp0s8 inet dhcp

# lspci -> list pci
# sudo lshw -C network 
