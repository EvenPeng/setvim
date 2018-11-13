# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy vimrc
cp .vimrc ~/.vimrc

# Install Plugins
vim -E -c PlugInstall -c qall!

# Install YCM
cd ~/.vim/plugged/youcompleteme
sh install.sh
