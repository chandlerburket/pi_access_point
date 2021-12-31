FROM ubuntu:20.04

RUN sudo apt install hostapd

RUN sudo systemctl unmask hostapd
RUN sudo systemctl enable hostapd

RUN sudo apt install dnsmasq

RUN sudo DEBIAN_FRONTEND=noninteractive apt install -y netfilter-persistent iptables-persistent
