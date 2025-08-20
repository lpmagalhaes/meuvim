# Configuração do meu Vim
sudo git clone https://github.com/lpmagalhaes/meuvim.git
sudo apt-get install -y vim 
sudo cp -R ~/.vim /root/
sudo git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim && cp meuvim/.vimrc /root/ && vim +PluginInstall +qall
