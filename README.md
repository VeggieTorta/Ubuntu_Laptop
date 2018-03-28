Ubuntu_Laptop

# Hardware:
* Macbook Air mid 2011
* i5
* 4 GB RAM

# Software
* Ubuntu 16.04 LTS / 64 bit

* Remap 'Caps lock' to 'esc'
   * sudo apt-get install gnome-tweak-tool -y && gnome-tweak-tool
   * Typing -> Caps lock behavior -> Select

* Vim 8.0:
  * Install:
    * sudo add-apt-repository ppa:jonathonf/vim
    * sudo apt update
    * sudo apt install vim
  * Uninstall:
    * sudo apt install ppa-purge && sudo ppa-purge ppa:jonathonf/vim

* Git:
  * Install:
    * sudo apt-get update
    * Sudo apt-get install git

* Ranger:
  * Install:
    * sudo apt-get update
    * sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo

* Terminator:
  * Install:
    * sudo add-apt-repository ppa:gnome-terminator
    * sudo apt-get update
    * sudo apt-get install terminator
  * Uninstall:
    * sudo apt-get remove terminator
    * sudo apt-get remove --auto-remove terminator
  
* Vim Plug-ins:
  * Pathogen:
    * mkdir -p ~/.vim/autoload ~/.vim/bundle && \ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  * Nerdtree:
    * git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
  * Startify:
    * git clone https://github.com/mhinz/vim-startify.git ~/.vim/bundle/Startify
  * Vimwiki:
    * git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki

* Other:
  * Install Synapse
  
  
