# Install dependencies
if type "sudo" > /dev/null; then
	sudo apt-get update
	sudo apt-get install -y \
			git \
			vim \
			curl \
			build-essential \
			cmake \
			python3-dev \
			mercurial \
			make \
			binutils \
			bison \
			gcc \
			clang-format
else
	apt-get update
	apt-get install -y \
			git \
			vim \
			curl \
			build-essential \
			cmake \
			python3-dev \
			mercurial \
			make \
			binutils \
			bison \
			gcc \
			clang-format
fi

# Install gvm
curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash
bash -c "source ~/.gvm/scripts/gvm"

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy vimrc
cp .vimrc ~/.vimrc

# Install Plugins
vim -E -c PlugInstall -c qall!

# Install YCM
cd ~/.vim/plugged/youcompleteme
python3 install.py
