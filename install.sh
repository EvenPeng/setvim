# Install dependencies
sudo apt-get update
sudo apt-get install -y \
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
python3 install.py
