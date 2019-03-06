FROM ubuntu:18.04

RUN apt update && apt install -y kea-dhcp4-server kea-dhcp6-server && touch /usr/local/kea-dhcp4.conf /usr/local/kea-dhcp6.conf

# CMD ["sh", "-c", "/usr/sbin/kea-dhcp4 -c /usr/local/kea.conf & /usr/sbin/kea-dhcp6 -c /usr/local/kea.conf"]
CMD ["sh", "-c", "/usr/sbin/kea-dhcp4 -c /usr/local/kea.conf"]

