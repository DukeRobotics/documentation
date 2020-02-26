Network Setup between Router, DukeVisitor Wifi, and Computer(Ubuntu)
-----
- install ssh in Ubuntu
  - `sudo apt update`
  - `sudo apt install openssh-server`
- create ethernet connection interface in `/etc/network/interfaces`, it may already exist
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

- change `/etc/NetworkManager/NetworkManager.conf` into
`````
[main]
plugins=ifupdown,keyfile
[ifupdown]
managed=true
[device]
wifi.scan-rand-mac-address=no
`````
- run `sudo service network-manager restart`
- run `sudo reboot`
- change network settings
  - click `edit connection` under network in tool bar
  - make sure `eth0` exists under Ethernet and is connected to
  - click into `eth0`
    - under `IPv6 Settings` tab, set `Method` to `Ignore`
    - under `General` tab, check `Automatically connect to this network when it is available` and  `All users may connect to this network`
    - under `IPv4 Settings` tab, set `Method` to `Shared to other computers`
- check ifconfig
  - see if `eth0` is running with correct ip address `192.168.1.1`
- set default network connection to `DukeVisitor` wifi
- change `/etc/network/interfaces` into
`````
source-directory /etc/network/interfaces.d
#
auto lo
iface lo inet loopback
`````
- change `/etc/NetworkManager/NetworkManager.conf` into
`````
[main]
plugins=ifupdown,keyfile
[ifupdown]
managed=false
[device]
wifi.scan-rand-mac-address=no
`````
- run `sudo service network-manager restart` 
- run `sudo reboot`
- check if wifi and eth0 are automatically connected after reboot
  - if not, then google:)
