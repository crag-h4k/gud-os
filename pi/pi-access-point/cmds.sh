cat ap-pkgs.txt|xargs sudo apt install -y
sudo systemctl stop hostapd dnsmasq
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"
sudo systemctl enable dhcpd hostapd
sudo systemctl restart dhcpd hostapd
