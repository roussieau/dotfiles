#!/bin/sh
current=~/.dotfiles

#Homebrew
echo 'Installing homebrew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Updating brew
echo 'Updating brew...'
brew update 
brew=(
  'git'
	'vim'
	'zsh'
)

for software in "${brew[@]}"; do
    echo "Installation of $software..."
    brew install $software
done

#brew cask
brew_cask=(
  'sublime-text'
  'vlc'
	'google-chrome'
	'spotify'
)

for software in "${brew_cask[@]}"; do
    echo "Installation of $software..."
    brew cask install $software
done

###Setup zsh
#echo 'Setup zsh'
#chsh -s /bin/zsh
#echo 'Installing Oh my zsh'
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#
#
#ln -svf $current/vim/vimrc ~/.vimrc
#ln -svf $current/tmux/tmux.conf ~/.tmux.conf
#ln -svf $current/zsh/zshrc ~/.zshrc
#ln -svf $current/git/gitconfig ~/.gitconfig
#ln -svf $current/vim/vim/* ~/.vim
