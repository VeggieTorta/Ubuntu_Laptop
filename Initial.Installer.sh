#!/usr/bin/env bash


sudo apt update


# git
sudo apt install -y git

# tmux & dependencies
sudo apt install -y automake
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libevent-dev
sudo apt install -y libncurses5-dev

rm -fr /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
sudo make install -y
cd -
rm -fr /tmp/tmux

# gitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i --force-depends gitkraken-amd64.deb
sudo apt-get install -f
rm -f gitkraken-amd64.deb

# ranger
sudo apt-get install -y ranger caca-utils highlight atool w3m poppler-utils mediainfo

# vim
yes sudo '' | add-apt-repository ppa:jonathonf/vim
sudo apt install -y vim

# vim symbolic link
# ln -s -n /home/vt/Github/dotfiles/.vimrc /home/vt/

# vim vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# unity bar to bottom
gsettings set com.canonical.Unity.Launcher launcher-position Bottom

# gnome-tweak-tool
sudo apt-get install -y gnome-tweak-tool

# urxvt terminal
# sudo apt-get install rxvt-unicode

# Tilix terminal
wget https://github.com/gnunn1/tilix/releases/download/1.7.7/tilix.zip /tmp/tilix
cd /tmp/tilix
sudo unzip tilix.zip -d /
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
rm -fr /temp/tilix

# cmus
yes '' | sudo add-apt-repository ppa:jmuc/cmus
sudo apt-get install -y cmus

# cava (NOT WORKING) 
apt-get install -y libfftw3-dev libasound2-dev libncursesw5-dev libpulse-dev libtool

yes sudo '' | add-apt-repository ppa:tehtotalpwnage/ppa
sudo apt-get update
sudo apt-get install -y cava

# mutt
sudo apt-get install -y mutt

# chrome browser
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get install -y google-chrome-stable

# paper theme
yes '' | sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install -y paper-gtk-theme
sudo apt-get install -y paper-icon-theme
sudo apt-get install -y paper-cursor-theme

# unity-tweak-tool
sudo apt-get install -y unity-tweak-tool

# remove bloatwear

sudo apt-get remove account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty colord deja-dup deja-dup-backend-gvfs duplicity empathy empathy-common evolution-data-server-online-accounts example-content firefox gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-presentation-minimizer libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut thunderbird thunderbird-gnome-support totem totem-common totem-plugins unity-scope-audacious unity-scope-chromiumbookmarks unity-scope-clementine unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gdrive unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-manpages unity-scope-musicstores unity-scope-musique unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-video-remote unity-scope-virtualbox unity-scope-yelp unity-scope-zotero -y





