# Port forwarding
Port forwarding with rinetd

# What is it for?
For example, to hide the address of a remote server.
And thus not expose it to DDoS attacks.

# Installing

## Install depencies

```bash
sudo su
apt update -y
apt install -y rinetd git nano
```

## Clone repository

```bash
git clone https://github.com/art3m4ik3/port-forwarding.git
cd port-forwarding
```

## Configure settings

```bash
nano genports.sh
```

## Start genports.sh

```bash
chmod +x genports.sh
./genports.sh
```

## Restart rinetd

```bash
systemctl restart rinetd
```

# All done!
All selected ports will be forward from current server to another
