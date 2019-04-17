pool_dir=/kvm/Spool1/
vm_storage=32G
ram=2G
cpus=2
iface=br0
format=qcow2
hostname=first_kvm
name=$hostname.$format
username=
pkgs="build-essential, byobu, cmake, curl, dtrx, g++, gcc, git, highlight, htop, libffi-dev, libpython3-all-dev, libssl-dev, make, ncdu, net-tools, netselect-apt, nmap, openssh-server, python3-dev, python3-pip, ranger, sudo, tmux, tree, vim-nox, vim-pathogen, wget, zsh"
ssh_key_loc=


virt-builder debian-9 \
    -o $pool_dir/$name \
    --size=$vm_storage \
    --format $format \
    --hostname $hostname \
    --network \
    --timezone America/Denver \
    --install $pkgs \
    --firstboot-command "useradd -m -p $username; chage -d 0 $username" \
    --ssh-inject $username:file:$ssh_key_loc \

virt-install --import \
--name $hostname \
--memory $ram \
--vcpu $cpus \
--disk path=$pool_dir/$name, format=$format \
--os-variant debian9 \
--network=bridge=$iface,model=virtio \
