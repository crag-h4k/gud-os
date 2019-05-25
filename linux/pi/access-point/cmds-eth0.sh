ap_iface=wlan1
cat ap-pkgs.txt|xargs sudo apt install -y
sudo systemctl stop hostapd dnsmasq tor
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo systemctl enable dhcpd hostapd
sudo systemctl restart dhcpd hostapd
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo iptables -t nat -A PREROUTING -i $ap_iface -p tcp --dport 22 -j REDIRECT --to-ports 22
sudo iptables -t nat -A PREROUTING -i $ap_iface -p udp --dport 53 -j REDIRECT --to-ports 53
sudo iptables -t nat -A PREROUTING -i $ap_iface -p tcp --syn -j REDIRECT --to-ports 9040
sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"
sudo touch /var/log/tor/notices.log
sudo chown debian-tor /var/log/tor/notices.log
sudo chmod 644 /var/log/tor/notices.log
