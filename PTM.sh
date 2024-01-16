#!/bin/bash
a=$USER
echo("Intering root environment.")
sudo su
cp main-highlighter.zsh /usr/share/zsh/plugins/zsh-syntax-highlighting/highlighters/main/main-highlighter.zsh
sed -i 's/#color/color' /etc/pacman.conf
sed '24i ILoveCandy' /etc/pacman.conf
echo("Updating system...")
pacman -Syu --noconfirm 
echo("Installing necessary pentesting tools...")
pacman -Sy --noconfirm aircrack-ng apache arp-scan code yay cracklib curl exploitdb fping git hashcat hashcat-utils hashdeep hping hydra net-tools nmap nikto ncrack php composer nodejs npm tmux termshark wireshark-qt tmux radare2 tcpdump unzip
cd /tmp 
git clone https://github.com/secretsquirrel/the-backdoor-factory
cd the-backdoor-factory
chmod +x install.sh
./install.sh

git clone https://github.com/Amirhousain110/NiflHeim.git --deepth 1 /root/.config/nvim 
git clone https://github.com/Amirhousain110/NiflHeim.git --deepth 1 /home/$a/.config/nvim 


sudo $a
yay -Sy --noconfirm dirb dirbuster dirbuster-wordlists ghidra-git burpsuite hash-identifier hashid hurl crackle-git crack-7z crack ccrypt crunch gobuster mfcuk-git beef-xss 

cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip 
unzip Hack.zip

mkdir /home/$a/.fonts
cp Hack/* /home/$a/.fonts

cd ~
echo("All thing instlled and configed!")
source .zshrc
