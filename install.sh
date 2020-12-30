pkg i -y openssh nano python nyancat git wget zsh neofetch fish curl proot file aria2 p7zip neovim bat exa dnsutils
pip install -U youtube-dl setuptools pip 
cd ~; mkdir .zsh; cd .zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search
git clone --depth=1 https://github.com/denysdovhan/spaceship-prompt
cd ~
git clone https://github.com/llnnn-ux/termux-dot
cd ~/termux-dot; mkdir ~/.termux
ln -s termux.properties ~/.termux/termux.properties
ln -s .aliases ~/.aliases
ln -s .zprofile ~/.zprofile
ln -s .zshrc ~/.zshrc
ln -s .gitconfig ~/.gitconfig
ln -s .vimrc ~/.vimrc
mkdir $PREFIX/share/zsh/site-functions; ln -s ~/.zsh/spaceship-prompt/spaceship.zsh $PREFIX/share/zsh/site-functions/prompt_spaceship_setup
chsh -s zsh
