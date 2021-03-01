#!/bin/bash

############################################ common packages #################################################
apt update
apt install -y vim htop git tmux cmake build-essential wget libgl1-mesa-glx libglib2.0-0 curl

# install anaconda
cd ~/workspace
FILE=Anaconda3-2020.02-Linux-x86_64.sh
if ! [ -f "$FILE" ]; then
    wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
fi
bash Anaconda3-2020.02-Linux-x86_64.sh -b
source ~/.bashrc

########################################## intall vim plugins ################################################
# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim side bar
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

# vim nice indentation
git clone https://github.com/Vimjas/vim-python-pep8-indent.git ~/.vim/bundle/vim-python-pep8-indent

# monokai colors
git clone https://github.com/crusoexia/vim-monokai.git ~/.vim/bundle/vim-monokai
cd ~/.vim/bundle/vim-monokai && git checkout dfd773b5d2aa7d02bf78d833c366d654651ddbe9

# auto code completion
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe && git checkout 85c11d3a875b02a7ac28fb96d0c7a02782f60410
git submodule update --init --recursive && python install.py

# track git modification
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

# python code format
git clone https://github.com/nvie/vim-flake8.git ~/.vim/bundle/vim-flake8

######################################### vim and tmux configs #################################################
cd ~
wget https://raw.githubusercontent.com/thangvubk/config/master/.vimrc
wget https://raw.githubusercontent.com/thangvubk/config/master/.tmux.conf
