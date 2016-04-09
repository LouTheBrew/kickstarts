url --url="http://mirrors.sonic.net/centos/72.1511/os/x86_64"
text
ignoredisk --only-use=vda
keyboard --vckeymap=us --xlayouts='us'
lang en_US.UTF-0
network --bootproto=dhcp --device=eth0 --ipv6=auto --activate
network --hostname=localhost.localdomain
rootpw usado1113
skipx
timezone US/Pacific
user --groups=root --name=ldesiqueira --password=usado1113 --gecos="luis"
bootloader --append "crashkernel=auto" --location=mbr --boot-drive=vda
autopart --type=lvm
clearpart --all --initlabel --drives=vda
%packages
@core
%end
%addon com_redhat_kdump --enable --reserve-mb='auto'
%end
reboot
