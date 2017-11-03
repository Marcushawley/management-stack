# Adjustable Environment Variables. Change the following variable to suit your needs

export PASS='Password01'
export NET='172.16.0'  #First three octets of your LAN network -- Assuming it's a /24 
export GATEWAY='172.16.0.1' # Gateway to internet
export DOMAIN='citrix.lab' # Desired domain for LDAP
export DATA='/mgmt_data' # Directory to keep all persistent data

# Static Recomended Environment Variables

## Default host network interface to use to share same L2 network with containers. 
export ETH='eth0' # Interface for macvland driver to create Docker Network with

########
#### Static Variables to store persistent service data.
########

## LDAP Variables --- These directories should be initially empty before starting the stack
export LDAP_DB="$DATA/ldap/db"
export LDAP_CONF="$DATA/ldap/config"

## DNS, DHCP, and Webmin Persistent data --- These directories should be Pre-populated with your ISC DHCP dhcpd.conf file before starting the stack. See Example directory.
export DHCPDNS_DATA="$DATA/dhcpdns"

## Guacamole Variables --- These directories should be initially empty before starting the stack
export GUAC_DATA="$DATA/guac"

## XenOrchestra Variables --- These directories should be initially empty before starting the stack
export XO_DATA="$DATA/xo/conf"
export REDIS_DATA="$DATA/xo/redis"

## Cloud-Drive Variables --- These directories cab be initially empty before starting the stack. You can add/remove files as desired to host for simple download within the LAN network. See example directory
export CLOUD_DRIVE="$DATA/cloud-drive"

## TFTP Variables --- These directories cab be initially empty before starting the stack. You can add/remove files as desired to host for simple download within the LAN network. See example directory
export TFTP_DATA="$DATA/tftp"