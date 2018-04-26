#!/usr/bin/env bash

###########################
##     Required tools    ##
###########################

    sudo apt-get install -y gdebi
    sudo apt-get update && sudo apt-get install -y curl # TODO Error: must run as root 

# TODO  purge

############################
##       Repos            ##
############################


# vim:
    yes '' | sudo add-apt-repository ppa:jonathonf/vim
# cmus:
    yes '' | sudo add-apt-repository ppa:jmuc/cmus
# cava:
    yes '' | sudo add-apt-repository ppa:tehtotalpwnage/ppa
# paper theme:
    yes '' | sudo add-apt-repository ppa:snwh/pulp
# ffmeg:
    yes '' | sudo add-apt-repository ppa:jonathonf/ffmpeg-3
# virtualbox:
    yes '' | sudo apt-add-repository "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib"
# ulauncher:
    yes '' | sudo add-apt-repository ppa:agornostal/ulauncher
# redshift:
    yes '' | sudo add-apt-repository ppa:dobey/redshift-daily
# EasyTag
    yes '' | sudo add-apt-repository ppa:amigadave/ppa




# update all repos
    sudo apt-get update



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

# desktop app (TODO NEEDS WORK)
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


# Download gitkraken file:
    wget https://release.gitkraken.com/linux/gitkraken-amd64.deb

# Unpack file:
    sudo dpkg -i --force-depends gitkraken-amd64.deb

# Install gitkraken:
    sudo apt-get install -f

# Remove downloaded gitkraken file:
    rm -f gitkraken-amd64.deb



############################
##         ranger         ##
############################


# Install ranger and dependencies:
    sudo apt-get install -y ranger caca-utils highlight atool w3m poppler-utils mediainfo

# Remove existing rc.conf file:
    rm /home/vt/.config/ranger/rc.conf

# Configuration file:
    ln -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/ranger/rc.conf /home/vt/.config/ranger/



############################
##          vim           ##
############################

# Install:
    sudo apt install -y vim

# Remove existing .vimrc file:
    rm /home/vt/.vimrc

# Configuration file, vim symbolic link:
    ln -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/vim/.vimrc /home/vt/


# Install plug-ins:

    # Vim vundle
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

# Unity bar move to bottom of screen:
    gsettings set com.canonical.Unity.Launcher launcher-position Bottom

# TODO Change wallpaper:
  # move wallpaper to picture folder
    #gsettings set org.gnome.desktop.background picture-uri 'file:///home/vt/Pictures/wallpaper_geometry.jpg'

# TODO Change unity bar size:


############################
##    gnome-tweak-tool    ##
############################

# Typing -> Caps Lock behavior -> Select
    sudo apt-get install -y gnome-tweak-tool


############################
##     Tilix terminal     ##
############################

# Download and place in /tmp/tilix:
    wget https://github.com/gnunn1/tilix/releases/download/1.7.7/tilix.zip /tmp/tilix

# Move over to /tmp/tilix:
    cd /tmp/tilix

# Unzip tilix file:
    sudo unzip tilix.zip -d /

# Install tilix:
    sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# Remove tmp/tilix folders & files:
    rm -fr /tmp/tilix

# Fix tilix configuration error
    # Tilix->Preferences->Default->Command-> select 'Run command as login shell'

# Fix Tilix vte.sh add to .zshrc file
    # see zshrc file

# Fix missing symlink:
    sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# Quake mod key-binding
    # TODO


###########################
##   zsh & Oh-My-Zsh     ##
###########################


# Install:
    sudo apt-get install -y zsh


# TODO remove current .bashrc 
    # rm /home/vt/.bashrc
    # TODO .bashrc edited to make zsh default
    # mv zip/file/ /home/vt/


# install oh-my-zsh TODO stops the continuation of all other install, remove or place at the end.
   #sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# TODO disable the changing of shell

# Configuration file symbolic link:
    ln -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/zsh/.zshrc /home/vt/
    #TODO correct the right file


############################
##          cmus          ##
############################

# Install:
    sudo apt-get install -y cmus

# Configuration file:
    sudo rm /usr/share/cmus/rc
    sudo ln -s -n /home/vt/Github/Ubuntu_Laptop/dotfiles/cmus/rc /usr/share/cmus/

# Theme Dracula
    sudo ln -s -n /home/vt/Github/Ubuntu_Laptop/dotfiles/cmus/dracula.theme /usr/share/cmus/

# Additional Information:
    # Apply theme, inside of cmus. :colorscheme dracula

    # Clear cache:
   :update-cache -f


############################
##         cava           ##
############################

# Install:
    sudo apt-get install -y cava

# TODO Bind to start with cmus

############################
##       paper theme      ##
############################

# Install:
    sudo apt-get install -y paper-gtk-theme
    sudo apt-get install -y paper-icon-theme
    sudo apt-get install -y paper-cursor-theme


###########################
##    unity-tweak-tool   ##
###########################

# Install:
    sudo apt-get install -y unity-tweak-tool


###########################
##    remove bloatwear   ##
###########################

# Uninstall:

sudo apt-get remove account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty colord deja-dup deja-dup-backend-gvfs duplicity empathy empathy-common evolution-data-server-online-accounts example-content firefox gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-presentation-minimizer libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut thunderbird thunderbird-gnome-support totem totem-common totem-plugins unity-scope-audacious unity-scope-chromiumbookmarks unity-scope-clementine unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gdrive unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-manpages unity-scope-musicstores unity-scope-musique unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-video-remote unity-scope-virtualbox unity-scope-yelp unity-scope-zotero -y


##########################
##  Power Saving Tool   ##
##########################

# Install Powertop:
    sudo apt-get install -y powertop

# Install TLP:
    sudo apt install -y tlp tlp-rdw


##########################
##       mosh           ##
##########################

# Install:
    sudo apt install -y mosh


#########################
##   virtualbox        ##
#########################


# Security key:
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Intall:
    sudo apt-get install -y virtualbox


##########################
##      redshift        ##
##########################

# Install:
    sudo apt-get install -y redshift redshift-gtk

# Remove current reshift.conf file:
    rm /home/vt/.config/redshift.conf

# Configuration file and symbolic link:
    ln -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/redshift/redshift.conf /home/vt/.config/



##########################
##        htop          ##
##########################

    sudo apt-get install -y htop


#########################
##     uLauncher       ##
#########################

# Install:
    sudo apt-get install -y ulauncher


# TODO configuration file
# TODO add to start-up apps

# Remove current configuration files:
    rm /home/vt/.config/ulauncher/settings.json
    rm /home/vt/.config/ulauncher/extensions.json
    rm /home/vt/.config/ulauncher/shortcuts.json

# Configuration files and symbolic link:
    ls -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/ulauncher/settings.json /home/vt/.config/ulauncher/
    ls -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/ulauncher/extensions.json /home/vt/.config/ulauncher/
    ls -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/ulauncher/shortcuts.json /home/vt/.config/ulauncher/



#########################
##      ffmpeg         ##
#########################

    sudo apt install -y ffmpeg libav-tools x264 x265


#########################
##      Arp-scan       ##
#########################

# Install:
    sudo apt-get install -y arp-scan

# Information:
    # To scan local network: sudo arp-scan -l
    # http://www.nta-monitor.com/wiki/index.php/Arp-scan_User_Guide#Introduction_to_arp-scan


#########################
##       VLC           ##
#########################

# Install:
    sudo apt-get install -y vlc



#########################
##         mutt        ##
#########################

# Install:
    sudo apt-get install -y mutt

# TODO Input request, posfix & local folder

# Remove current .muttrc file:
    rm /home/vt/.muttrc
    rm /home/vt/.mutt/.muttrc

# Configuration file:
    ln -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/mutt/.muttrc /home/vt/



#########################
##  TODO KeepPass:     ##
#########################

# Repo
    # sudo add-apt-repository ppa:jtaylor/keepass

# Install
    # sudo apt-get update && sudo apt-get install -y keepass2


##########################
##       xbindkeys      ##
##########################

# Install:
    sudo apt-get install -y xbindkeys xbindkeys-config


# Information:
    # View Keybindind:$ xbindkeys -k


# Configuration TODO


#########################
##      Easytag        ##
#########################

# Install:
    sudo apt-get install -y easytag


#########################
##      taskwarrior    ##
#########################

# Install:
    sudo apt-get install taskwarrior

# Configuration file
    #TODO


# Information:
    # Add $ task add buy mikl
    # Edit $ task 1 modify buy milk
    # List $ task list
    # Done $ task 1 done
    # Calendar $ task calendar


##########################
##     Start-up apps    ##
##########################

# Ulauncher
    ln -n -s /home/vt/Ubuntu_Macbook_Air/dotfiles/autostart/pia_manager.desktop

# Tilix
    ln -n -s /home/vt/Ubuntu_Macbook_Air/dotfiles/autostart/pia_manager.desktop

# Redshift
    ln -n -s /home/vt/Ubuntu_Macbook_Air/dotfiles/autostart/pia_manager.desktop

# PIA
    ln -n -s /home/vt/Ubuntu_Macbook_Air/dotfiles/autostart/pia_manager.desktop

