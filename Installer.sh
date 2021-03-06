#!/usr/bin/env bash


#TODO if/then statement to check if program is installed
#TODO tilix failed 
#TODO amazon bloatwear still installed
#TODO cmus failed /usr/share/cmus/cmus/rc: No such file or directory
#TODO auto start symbolink link failed
#TODO NEOVIM req feedback
#TODO clean-up took out all the dotfiles
#TODO script to auto close and reopen terminal 
#TODO dotfiles folder should be created
#TODO script to auto launch ulanucher
#TODO terminal-termite not installed
#TODO wallpapers lose, not in wallpaper folder :(
#TODO rebinding of keys needed
#TODO theme not applied
#




#############################
##  Rename Current Folder  ## 
#############################

# Github add ~master to downloaded zip.
mv /home/vt/Ubuntu_Macbook_Air-master /home/vt/Ubuntu_Macbook_Air




###########################
##     Required tools    ##
###########################

    sudo apt-get install -y gdebi
    sudo apt-get install -y curl # TODO Error: must run as root 

# TODO purge

# TODO prevent being logged out scripti:
    # Install Caffeine


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
# easytag
    yes '' | sudo add-apt-repository ppa:amigadave/ppa
# neovim:
    yes '' | sudo add-apt-repository ppa:neovim-ppa/unstable


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

# Install:
    sudo apt install -y automake
    sudo apt install -y build-essential
    sudo apt install -y pkg-config
    sudo apt install -y libevent-dev
    sudo apt install -y libncurses5-dev

    rm -fr /tmp/tmux

    git clone https://github.com/tmux/tmux.git /home/vt/Ubuntu_Macbook_Air/

    cd /home/vt/Ubuntu_Macbook_Air/

    sh autogen.sh

    ./configure && make

    sudo make install -y

# Configuration:
    ln -s -n /home/vt/Ubuntu_Macbook_Air/dotfile/tmux/.tmux.conf /home/vt/

# Tmux Themepack:
    git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack


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

# Install Vundle:
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plug-ins:

    # Vim vundle
    # NERDTree
    # Startify
    # Vimwiki
    # Vim-notes
    # Vim-misc
    # Vim-multople-cursors

    vim +PluginIntall +qall

###########################
##    Unity bar bottom   ##
###########################

# Unity bar move to bottom of screen:
    gsettings set com.canonical.Unity.Launcher launcher-position Bottom


###########################
##    Change Wallpaper   ##
###########################

# move wallpaper to picture folder:
    mv /home/vt/Ubuntu_Macbook_Air/Wallpaper/geo_blue.jpg /home/vt/Pictures/

# Apply wallpaper changer:
    gsettings set org.gnome.desktop.background picture-uri file:///home/vt/Pictures/geo_blue.jpg

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
    # Handled by xKeybinding: Alt+Command + 1


###########################
##   zsh & Oh-My-Zsh     ##
###########################

# Install:
    #sudo apt-get install -y zsh

# Install oh-my-zsh.
   #sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Configuration file symbolic link:
    #ln -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/zsh/.zshrc /home/vt/


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


# Information:
    # Apply theme, inside of cmus.
        # :colorscheme dracula

    # Clear cache:
        # :update-cache -f


############################
##         cava           ##
############################

# Install:
    sudo apt-get install -y cava

# Bind to start with cmus:
    # tmux script created: zmedia.sh


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

#sudo apt-get remove account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty colord deja-dup deja-dup-backend-gvfs duplicity empathy empathy-common evolution-data-server-online-accounts example-content firefox gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport libreoffice-presentation-minimizer libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut thunderbird thunderbird-gnome-support totem totem-common totem-plugins unity-scope-audacious unity-scope-chromiumbookmarks unity-scope-clementine unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks unity-scope-gdrive unity-scope-gmusicbrowser unity-scope-gourmet unity-scope-manpages unity-scope-musicstores unity-scope-musique unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-video-remote unity-scope-virtualbox unity-scope-yelp unity-scope-zotero -y


##########################
##  Power Saving Tool   ##
##########################


# Install Powertop:
    sudo apt-get install -y powertop


# Install TLP:
    sudo apt install -y tlp tlp-rdw
    sudo tlp start


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

# Information:
    # Location set up manually to SF, CA.


##########################
##        htop          ##
##########################

    sudo apt-get install -y htop


#########################
##     uLauncher       ##
#########################

# Install:
    sudo apt-get install -y ulauncher

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
    # To scan local network:
        # $ sudo arp-scan -l
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
#    sudo apt-get install -y mutt

# TODO Input request, posfix & local folder

# Remove current .muttrc file:
#    rm /home/vt/.muttrc
#    rm /home/vt/.mutt/.muttrc

# Configuration file:
#    ln -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/mutt/.muttrc /home/vt/


##########################
##       xbindkeys      ##
##########################

# Install:
    sudo apt-get install -y xbindkeys xbindkeys-config


# Information:
    # View Keybindind: $ xbindkeys -k
    # View assigned keybinding: $ xbindkeys_show
    # UI interface: $ xbindkeys-config
    # Kebindings:
        # Control+space = ulauncher
        # Control+Alt + 1 = tilix quake

# Remove current configuration file:
    rm /home/vt/.xbindkeysrc

# Configuration file:
    ln s- -n /home/vt/Ubuntu_Macbook_Air/dotfiles/xbindkeys/.xbindkeysrc /home/vt/


#########################
##      Easytag        ##
#########################

# Install:
    sudo apt-get install -y easytag


#########################
##       neo-vim       ##
#########################


# Install:
    sudo apt-get install neovim


# Link old vim to neovim
    ln -s ~/.vimrc ~/.config/nvim/init.vim


##########################
##     Start-up apps    ##
##########################

# ulauncher:
    ln -n -s /home/vt/Ubuntu_Macbook_Air/dotfiles/autostart/ulauncher.desktop

# tilix:
    ln -n -s /home/vt/Ubuntu_Macbook_Air/dotfiles/autostart/Tilix.desktop

# redshift:
    ln -n -s /home/vt/Ubuntu_Macbook_Air/dotfiles/autostart/reshift-gtk.desktop

# PIA:
    ln -n -s /home/vt/Ubuntu_Macbook_Air/dotfiles/autostart/pia_manager.desktop

# Dropbox:
    #TODO

##########################
##     Cleanup          ##
##########################


# Remove Github zip file:
    rm  -rf /home/vt/Ubuntu_Macbook_Air
    rm /home/vt/Download/Ubuntu_Macbook_Air-master.zip


##########################
##     Terminal         ##
##########################


# URxvt-Unicode:

#   Install:
    sudo apt-get install -y rxvt-unicode-256color

# Configuration:
    ln -s -n /home/vt/Ubuntu_Macbook_Air/dotfiles/urxvt/.Xresources /home/vt/

# Transparentcy Dependentcy:
    sudo apt-get install -y compton

# Perl Plug-ins: /usr/lib/urxvt/perl
    ln -s -n /home/vt/dotfile/urxvt/perl_scripts/resize-font /usr/lib/urxvt/perl/




# Configuration load:
    xrdb ~/.Xresources



# Termite:
#   Install:
#
#   Configuration:
#    mkdir /home/vt/.config/termite
#    ln -s -n /home/vt/Ubuntu_Mackbook_Air/dotfiles/termite/.config /home/vt/.config/termite/





##########################
##        Font          ##
##########################

# NERD Font Install:
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf


#########################
##       Dropbox       ##
#########################

# Install:
    sudo apt-get -y install nautilus-dropbox


################################
##  Gorilla Password Manager  ##
################################

# Install:
    sudo apt-get install -y password-gorilla

# Sycn:
#   Done via Dropbox




#TODO default terminal
#    * sudo update-alternatives --config x-terminal-emulator



#############################
##       Linux Brew        ##
#############################

# Install:
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"


# Configure bash file:
    test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
    test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
    test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
    echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile
    brew install hello


#############################
##       todo.txt          ##
#############################


# Install:
#   Full program already exit on dropbox account /Dropbox/todo.txt/

# Configuration:
#   .bashrc set-up
#       alias t='/home/vt/Dropbox/todo.txt/todo.sh
#       if [ -f ~/Dropbox/todo.txt/todo_completion ]; then
#           . ~/Dropbox/todo.txt/todo_completion
#       fi


#############################
##         fzf             ##
#############################

# TODO install fzf

#############################
##         unrar           ##
#############################

# TODO install unrar
