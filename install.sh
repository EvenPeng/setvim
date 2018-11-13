# Install dependencies
sudo apt-get update
sudo apt-install -y \
		vim \
		curl \
		build-essential \
		cmake \
		python3-dev

# Copy vimrc
cp .vimrc ~/.vimrc

# Install Plugins
vim -E -c PlugInstall -c qall!

# Install YCM
cd ~/.vim/plugged/youcompleteme
sh install.sh
