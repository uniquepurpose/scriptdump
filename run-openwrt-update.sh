#!/bin/sh
opkg update
opkg list-upgradable | cut -d " " -f1 | xargs -r opkg upgrade
