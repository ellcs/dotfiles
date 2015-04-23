# Connect to HAW Hamburg via VPN under Linux

You may need to install `openconnect`. To do this type under arch linux `pacman -S openconnect`.

```
> sudo openconnect connect.haw-hamburg.de
[sudo] password for user: 
POST https://connect.haw-hamburg.de/
Attempting to connect to server 141.22.5.20:443
SSL negotiation with connect.haw-hamburg.de
Connected to HTTPS on connect.haw-hamburg.de
XML POST enabled
Full - der komplette Netzwerkverkehr geht durch den VPN-Tunnel.
Split - Nur der Traffic f? HAW-Server geht durch den Tunnel.
Please enter your username and password.
Username:a-label
Password:
```
