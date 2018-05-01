mkdir -p ~/.i3/
rm ~/.i3/config
ln -s ~/.dotfiles/config.i3 ~/.i3/config
rm ~/.Xresources
ln -s ~/.dotfiles/Xresources ~/.Xresources
rm ~/.config/xfce4/terminal/terminalrc
ln -s ~/.dotfiles/terminalrc ~/.config/xfce4/terminal/terminalrc
rm ~/.bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc
rm ~/.config/compton.conf
ln -s ~/.dotfiles/compton.conf ~/.config/compton.conf
rm ~/.i3blocks.conf
ln -s ~/.dotfiles/.i3blocks.conf ~/.i3blocks.conf
rm ~/.tmux.conf
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
rm ~/.config/dunstrc
ln -s ~/.dotfiles/dunstrc ~/.config/dunstrc
