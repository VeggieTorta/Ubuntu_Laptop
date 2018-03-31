# Hardware:
    * Macbook Air mid 2011
    * i5
    * 4 GB RAM
    * OS: Ubuntu 16.04 LTS / 64 bit

# System Mod:
    Added to /home/veggietorta/.bashrc
    
    # Scripts:
        # Launches neofetch everytime terminal is launched
    source /home/veggietorta/.startup_neofetch.sh
        # Switches mapping of 'command' and 'control' key
    source /home/veggietorta/.startup_remapkey.sh


# Programs:
### Terminator:
    * Install:
      * sudo add-apt-repository ppa:gnome-terminator
      * sudo apt-get update
      * sudo apt-get install terminator
    * Uninstall:
      * sudo apt-get remove terminator
      * sudo apt-get remove --auto-remove terminator

### Vim 8.0:
Install:
    ``` 
     sudo add-apt-repository ppa:jonathonf/vim
     sudo apt update
     sudo apt install vim
    ```
    * Uninstall vim:
      * sudo apt install ppa-purge && sudo ppa-purge ppa:jonathonf/vim
    * Unintstall nano:
      * sudo apt-get remove --auto-remove nano
      * sudo apt-get purge nano
      * sudo apt-get --audo-remove nano
    * Select Default Editor:
      * sudo update-alternative --config editor

### Remap 'Caps lock' to 'esc':
    * sudo apt-get install gnome-tweak-tool -y && gnome-tweak-tool
    * Typing -> Caps lock behavior -> Select

### Remap "Cap Lock" to a second "esc", placed in ~/.profile:
    * xsetkbmap -option caps:escape

### Git:
    * Install:
      * sudo apt-get update
      * Sudo apt-get install git

### GitKraken:
    * Install:
        * wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
        * sudo dpkg -i --force-depends gitkraken-amd64.deb
        * sudo apt-get install -f
        * rm -f gitkraken-amd64.deb

### Ranger:
    * Install:
      * sudo apt-get update
      * sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo

### Vim Plug-ins:
    * Curl:
      * sudo apt-get update && sudo apt-get install curl
    * Pathogen:
      * mkdir -p ~/.vim/autoload ~/.vim/bundle && \ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    * Nerdtree:
      * git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
    * Startify:
      * git clone https://github.com/mhinz/vim-startify.git ~/.vim/bundle/Startify
    * Vimwiki:
      * git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki

# Mosh:
    * Sudo apt install mosh
 

# Other:
    * Install Synapse
    * Dropbox
    * Private Internete Access:
        * https://www.privateinternetaccess.com/installer/download_installer_linux
    * KeepPass:
        * sudo add-apt-repository ppa:jtaylor/keepass
        * sudo apt-get update && sudo apt-get install keepass2
  
  
