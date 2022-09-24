#!/bin/bash

R='\033[0;31m'
G='\033[0;32m'
O='\033[0;33m'

if [[ $EUID -ne 0 ]]
then  
echo -e "${R} [+] Please Run as Root"
exit 1
else
echo -e "${O} [+] ${G} Installing Required Packages ......."
cd
mkdir -p DOS
apt -y install curl wget libcurl4 libssl-dev python3 python3-pip make cmake automake autoconf m4 build-essential ruby perl golang git
echo -e "${O} [+] ${G} Downloading system Updates ......."
sleep 2
sudo apt update -y
sudo apt upgrade -y
sudo apt install npm -y
sudo install nodejs -y
sudo apt install git -y
sleep 2
echo -e "${O} [+] ${G} Installing Python ......."
sudo apt install python -y
sudo apt install python2 -y
sudo apt install python3 -y
sudo apt install pip -y
sudo apt install pip2 -y
sudo apt install pip3 -y

sleep 2
echo -e "${O} [+] ${G} Installing Go Language ......."
sudo apt install golang -y

sleep 2
echo -e "${O} [+] ${G} Installing Perl ......."
sudo apt install perl -y
sleep 2
echo -e "${O} [+] ${G} Installing npm Requirements ......."
npm i requests
npm i https-proxy-agent
npm i crypto-random-string
npm i events
npm i fs
npm i net
npm i cloudscraper
npm i request
npm i hcaptcha-solver
npm i randomstring
npm i cluster
npm i cloudflare-bypasser

echo -e "${O} [+] ${G} Installing Chrome ......."
sleep 2
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt-get install ./google-chrome-stable_current_amd64.deb
ulimit -n 999999


echo -e "${O} [+] ${G} Cloning Raven-Storm ......."
cd DOS
sleep 2 
https://github.com/Tmpertor/Raven-Storm
cd Raven-Storm
chmod +x *
./install.sh
pip3 install -r requirements.txt
cd 

echo -e "${O} [+] ${G}  Raven-Storm is succesfully installed"

echo -e "${O} [+] ${G}  Cloning ZxCDDoS ......"
cd DOS
sleep 2
git clone https://github.com/hoaan1995/ZxCDDoS
cd ZxCDDoS
pip3 install -r requirements.txt
echo -e "${O} [+] ${G}  ZxCDDoS is succesfully installed"
cd

echo -e "${O} [+] ${G}  Cloning MHDDoS ......"
cd DOS
sleep 2
git clone https://github.com/MatrixTM/MHDDoS.git
cd MHDDoS
pip install -r requirements.txt
cd
echo -e "${O} [+] ${G}  Installed all Required Tools ......"
cd DOS
echo -e "${O} [+] ${G}  Check the Installed tools Below ......"
ls
fi
