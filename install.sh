echo "Installing packages..."
pkg i -y openssh nano python nyancat git wget zsh neofetch fish curl proot file aria2 p7zip neovim bat exa dnsutils
echo "Installing pip packages..."
pip install -U youtube-dl setuptools pip
echo "Cloning zsh plugins..." 
cd ~; mkdir .zsh; cd .zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search
git clone --depth=1 https://github.com/denysdovhan/spaceship-prompt
cd ~
git clone https://github.com/llnnn-ux/termux-dot
mkdir ~/.termux
echo "Linking dotfiles..."
ln -sf ~/termux-dot/.termux/termux.properties ~/.termux/termux.properties
ln -sf ~/termux-dot/.aliasrc ~/.aliasrc
ln -sf ~/termux-dot/.zprofile ~/.zprofile
ln -sf ~/termux-dot/.zshrc ~/.zshrc
ln -sf ~/termux-dot/.gitconfig ~/.gitconfig
ln -sf ~/termux-dot/.vimrc ~/.vimrc
mkdir $PREFIX/share/zsh/site-functions; ln -sf ~/.zsh/spaceship-prompt/spaceship.zsh $PREFIX/share/zsh/site-functions/prompt_spaceship_setup
chsh -s zsh
echo "Done\!"
