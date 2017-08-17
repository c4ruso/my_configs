# py charm
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -sc)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'

wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -

#idk
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys  BBEBDCB318AD50EC6865090613B00F1FD2C19886

#spotify
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

#tor
sudo add-apt-repository -y ppa:webupd8team/tor-browser

curl -s https://packagecloud.io/install/repositories/gyazo/gyazo-for-linux/script.deb.sh | sudo bash

sudo apt-get update

sudo apt-get -y install gnome-tweak-tool emacs curl wireshark python3-pip htop tor-browser spotify-client gyazo network-manager-openvpn-gnome strongswan-nm strongswan-ikev2 libstrongswan-standard-plugins pycharm openjdk-8-jdk virtualbox

git config --global user.email "d.m.c.iiaz@gmail.com"
git config --global user.name "Daniel Caruso II"

sudo timedatectl set-local-rtc 1

# nord https://support.nordvpn.com/hc/en-us/articles/206927749-Linux-setup
#   god damn annoying
#  sudo apt install libcharon-extra-plugins



# PATH="$PATH:$HOME/bin"

# https://slack.com/downloads/linux

# swap ctrl / caps in linux server
# sudo nano /etc/default/keyboard
# XKBOPTIONS="ctrl:swapcaps"
# sudo dpkg-reconfigure keyboard-configuration

