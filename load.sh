[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim

ln -s ~/dotfiles/.gitconfig ~/
ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
