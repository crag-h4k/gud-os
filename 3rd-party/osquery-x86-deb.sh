sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1484120AC4E9F8A1A577AEEE97A80C63C9D8B80B
sudo echo 'deb [arch=amd64] https://pkg.osquery.io/deb deb main' >> /etc/apt/sources.list
sudo apt update
sudo apt install osquery
