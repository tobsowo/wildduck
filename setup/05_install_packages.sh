#! /bin/bash

OURNAME=05_install_packages.sh

echo -e "\n-- Executing ${ORANGE}${OURNAME}${NC} subscript --"

# install nginx
apt update
apt -q -y install pwgen git ufw build-essential libssl-dev dnsutils python-is-python3 software-properties-common nginx wget mongodb-org nodejs redis-server clamav clamav-daemon

# rspamd
apt -q -y --no-install-recommends install rspamd
apt clean

# DMARC policy=reject rules
echo 'actions = {
    quarantine = "add_header";
    reject = "reject";
}' > /etc/rspamd/override.d/dmarc.conf
