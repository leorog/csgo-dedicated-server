# CSGO Dedicated Server

### Using this repo

Pick one user-data:

- [dm](terraform/user-data/dm.yml)
- [retakes](terraform/user-data/retakes.yml)
- [executes](terraform/user-data/executes.yml)

Replace user-data variables:

1) \_SSH_KEY\_ the admin ssh public key 
2) \_GSLT\_ the game server login token, see: https://steamcommunity.com/dev/managegameservers
3) \_RCON\_ the remote connnection secret (for ingame console commands `rcon_password _RCON_; rcon mp_roundrestart 1`)

Create an instance on any [cloud-init supported cloud](https://cloudinit.readthedocs.io/en/latest/topics/availability.html#clouds)

Ports:
- 27015/udp linuxgsm
- 27005/udp linuxgsm
- 27020/udp linuxgsm
- 19999/tcp netdata
- 22/tcp ssh
- 80/tcp outbound 
- 443/tcp outbound

or setup with [terraform](terraform/README.md)
