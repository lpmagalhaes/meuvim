# Configuração do meu Vim

1. Instalando o bibliotecas e Vim

sudo apt-get install libncurses5-dev 
sudo git clone https://github.com/vim/vim.git 
cd vim/src
sudo make

2. Instalando Vundle

sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo vim +PluginInstall +qall
