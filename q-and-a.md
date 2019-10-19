# Q & A

This is the Duke Robotics Q&A Page. It contains problems that we have run in to, their causes, as well as how to fix them.

Entry format:

1. Problem Description: Description of the problem
2. Problem Cause: A conceptual explanation of what caused the problem
3. Fix - Conceptual: A conceptual explanation of how to fix the problem
4. Fix - Steps: Detailed steps to follow in order to fix the problem


- Setup Network between router, DukeVisitor wifi and computer(Ubuntu)
  - install ssh in Ubuntu
    - `sudo apt update`
    - `sudo apt install openssh-server`
  - create ethernet ethernet connection interface in `/etc/network/interfaces`
`````
source-directory /etc/network/interfaces.d
#
auto lo
iface lo inet loopback
#
auto eth0
iface eth0 inet static
address 192.168.1.1
netmask 255.255.255.0
`````
  - make sure `[ifupdown] managed=true` in `/etc/Network/Manager/NetworkManager.conf`
  - run `reboot` from terminal anytime config file is changed
  - change network settings
    - click `edit connection` under network in tool bar
    - make sure `eth0` exists under Ethernet
    - make sure `ifupdown(eth0)` exists under Ethernet
    - click into `eth0`, under `IPv6 Settings` tab, set `Method` to `Ignore`
  - check ifconfig
    - see if `eth0` is running with correct ip address
  - Set default network connection to `DukeVisitor` wifi
