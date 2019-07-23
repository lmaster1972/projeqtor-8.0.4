#!/bin/bash
# script to keep system updated based on Ubuntu Bionic
# credits: https://linuxconfig.org/how-to-update-ubuntu-packages-on-18-04-bionic-beaver-linux
apt update
apt list --upgradable
apt upgrade
apt autoremove


