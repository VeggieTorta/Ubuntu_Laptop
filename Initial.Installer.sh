#!/usr/bin/env bash

	#sudo apt update
	sudo apt-get install -y gdebi
	sudo apt-get update && sudo apt-get install curl

############################
##          scripts       ##
############################

# TODO sudo mv current/file /home/vt/



############################
##     google chrome      ##
############################

# dependency pkgs
	sudo apt-get install -y libxss1 libappindicator1 libindicator7

# dl google-chrome pkg 64 bit
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# install google-chrome pkg
	sudo dpkg -i google-chrome*.deb



###########################
##           git         ##
###########################

	sudo apt install -y git



###########################
##         PIA           ##
###########################

# ubuntu openvpn
	#sudo apt-get install -y curl network-manager-openvpn-gnome
	#wget https://www.privateinternetaccess.com/installer/pia-nm.sh
	#sudo bash pia-nm.sh

# desktop app (NEEDS WORK)
	# cd Downloads
	# wget https://www.privateinternetaccess.com/installer/download_installer_linux
	# tar -xzf pia-v78-installer-linux.tar.gz
	# ./pia-v78-installer-linux.sh



#############################
##    tmux & dependencies  ##
#############################

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



############################
##        gitkraken       ##
############################


# download gitkraken file
	wget https://release.gitkraken.com/linux/gitkraken-amd64.deb

# unpack file
	sudo dpkg -i --force-depends gitkraken-amd64.deb

# install gitkraken
	sudo apt-get install -f

# remove downloaded gitkraken file
	rm -f gitkraken-amd64.deb



############################
##         ranger         ##
############################


# Install ranger and dependencies	
	sudo apt-get install -y ranger caca-utils highlight atool w3m poppler-utils mediainfo

# TODO Config file



############################
##          vim           ##
############################

# adding repo
	yes sudo '' | add-apt-repository ppa:jonathonf/vim
	sudo apt install -y vim

# Remove existing .vimrc file
    rm /home/vt/.vimrc

# TODO config file, vim symbolic link
	# ln -s -n /home/vt/Github/Ubuntu_Laptop/dotfiles/.vimrc /home/vt/


# install plug-ins
    
    # vim vundle
    # NERDTree
    # Startify
    # Vimwiki
    # Rename
    # Vim-notes
    # Vim-misc
    # Vim-multople-cursors

    vim +PluginIntall +qall



###########################
##     gsettings         ##
###########################

# Unit bar move to bottom of screen
	gsettings set com.canonical.Unity.Launcher launcher-position Bottom

# TODO Change wallpaper
  # unzip and move wallpaper to picture folder
#sudo unzip /home/vt/Downloads/Ubuntu_laptop/wallpaper_geometry.zip -d /home/vt/Pictures/  
  # move wallpaper to picture folder
#gsettings set org.gnome.desktop.background picture-uri 'file:///home/vt/Pictures/wallpaper_geometry.jpg'



############################
##    gnome-tweak-tool    ##
############################

# Typing -> Caps Lock behavior -> Select
	sudo apt-get install -y gnome-tweak-tool



############################
##     Tilix terminal     ##
############################

# dl and place in /tmp/tilix
	wget https://github.com/gnunn1/tilix/releases/download/1.7.7/tilix.zip /tmp/tilix

# move over to /tmp/tilix
	cd /tmp/tilix

# unzip tilix file
	sudo unzip tilix.zip -d /

# install tilix
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# remove tmp/tilix folders & files
	rm -fr /tmp/tilix

# fix tilix configuration error
	# Tilix->Preferences->Default->Command-> select 'Run command as login shell'

# fix Tilix vte.sh add to .zshrc file
	# see zshrc file

# fix missing symlink
	sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# Quake mod key-binding
    # TODO


###########################
##   zsh & Oh-My-Zsh     ##
###########################


# install zsh
	sudo apt-get install -y zsh


# TODO remove current .bashrc 
    # rm /home/vt/.bashrc
    # TODO .bashrc edited to make zsh default
    # mv zip/file/ /home/vt/


# install oh-my-zsh
	sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


# TODO config file symbolic link 
	#ln -s -n /home/vt/Github/Ubuntu_Laptop/dotfiles/.zshrc /home/vt/



############################
##          cmus          ##
############################

# adding repo
	yes '' | sudo add-apt-repository ppa:jmuc/cmus

# install cmus
	sudo apt-get install -y cmus

#TODO config file


############################
##         cava           ##
############################


# adding repo
	sudo add-apt-repository ppa:tehtotalpwnage/ppa
	
# install cava
	sudo apt-get update
	sudo apt-get install -y cava


############################
##          mutt          ##
############################

	sudo apt-get install -y mutt


############################
##       paper theme      ##
############################

# adding repo
	yes '' | sudo add-apt-repository ppa:snwh/pulp

# install theme
	sudo apt-get update
	sudo apt-get install -y paper-gtk-theme
	sudo apt-get install -y paper-icon-theme
	sudo apt-get install -y paper-cursor-theme


###########################
##    unity-tweak-tool   ##
###########################

sudo apt-get install -y unity-tweak-tool


###########################
##    remove bloatwear   ##
###########################


sudo apt-get remove account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty colord deja-dup deja-dup-backend-gvfs duplicity empathy empathy-common evolution-data-server-online-accounts example-content firefox gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-presentation-minimizer libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut thunderbird thunderbird-gnome-support totem totem-common totem-plugins unity-scope-audacious unity-scope-chromiumbookmarks unity-scope-clementine unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gdrive unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-manpages unity-scope-musicstores unity-scope-musique unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-video-remote unity-scope-virtualbox unity-scope-yelp unity-scope-zotero -y


##########################
##  Power Saving Tool   ##
##########################
  
#powertop
	sudo apt-get update
	sudo apt-get install powertop

 #TLP
	sudo apt install tlp tlp-rdw


##########################
##       mosh           ##
##########################

	sudo apt install mosh


#########################
##   virtualbox        ##
#########################


# security key
	wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# add repository
	sudo apt-add-repository "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib"

# intall virtualbox
	sudo apt-get install -y virtualbox


##########################
##      redshift        ##
##########################

	# Adding repo
	sudo add-apt-repository ppa:dobey/redshift-daily

	# install
	sudo apt-get update
	sudo apt-get install -y redshift redshift-gtk

	# TODO config file 



##########################
##        htop          ##
##########################

	sudo apt-get install htop


#########################
##   uLauncher         ##
#########################

# add repo
    sudo add-apt-repository ppa:agornostal/ulauncher
    sudo apt-get update
    sudo apt-get install ulauncher


# TODO Rofi
# TODO startup app
# TODO Purge
# TODO KeepPass:
	# sudo add-apt-repository ppa:jtaylor/keepass
	# sudo apt-get update && sudo apt-get install keepass2
# TODO Dropbox
