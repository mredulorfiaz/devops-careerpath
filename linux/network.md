# Common Linux Network Commands

This guide provides an overview of frequently used Linux network commands and their basic usage.

## 1. ifconfig

Displays network interface configuration.

```
ifconfig [interface]
```

Example:
```
ifconfig eth0
```

## 2. ip

A powerful command for showing and manipulating routing, network devices, interfaces and tunnels.

```
ip [options] object {command | help}
```

Example:
```
ip addr show
ip link set eth0 up
```

## 3. ping

Tests connectivity between two nodes.

```
ping [options] destination
```

Example:
```
ping google.com
```

## 4. traceroute

Displays the route packets take to reach a destination.

```
traceroute [options] destination
```

Example:
```
traceroute google.com
```

## 5. netstat

Displays network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.

```
netstat [options]
```

Example:
```
netstat -tuln
```

## 6. ss

Another utility to investigate sockets.

```
ss [options] [filter]
```

Example:
```
ss -tuln
```

## 7. dig

DNS lookup utility.

```
dig [server] [name] [type]
```

Example:
```
dig google.com
```

## 8. nslookup

Queries internet name servers interactively.

```
nslookup [options] [name | -] [server]
```

Example:
```
nslookup google.com
```

## 9. wget

Retrieves files using HTTP, HTTPS and FTP protocols.

```
wget [options] [URL]
```

Example:
```
wget https://example.com/file.zip
```

## 10. curl

Transfers data from or to a server.

```
curl [options] [URL]
```

Example:
```
curl https://api.example.com/data
```

## 11. iptables

Administration tool for IPv4 packet filtering and NAT.

```
iptables [options] [chain] RULE-SPECIFICATION [matches] [target]
```

Example:
```
iptables -L
```

## 12. tcpdump

Dumps traffic on a network.

```
tcpdump [options] [expression]
```

Example:
```
tcpdump -i eth0
```

Remember to use `man [command]` for more detailed information about each command and its options.
