#!/bin/bash
apt update
apt install -y vim htop git tmux cmake build-essential wget python3 python3-dev libgl1-mesa-glx libglib2.0-0

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/Vimjas/vim-python-pep8-indent.git ~/.vim/bundle/vim-python-pep8-indent
git clone https://github.com/crusoexia/vim-monokai.git ~/.vim/bundle/vim-monokai
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/nvie/vim-flake8.git ~/.vim/bundle/vim-flake8


cd ~
wget https://raw.githubusercontent.com/thangvubk/config/master/.vimrc
wget https://raw.githubusercontent.com/thangvubk/config/master/.tmux.conf
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
