echo "Installing fish 3"
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

echo "Changing to fish as default shell"
chsh -s $(which fish)

echo "Installing tmux and tpm"
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Getting tmux config"
mkdir -p ~/.config/tmux
wget --no-check-certificate -O ~/.config/tmux/tmux.conf https://raw.githubusercontent.com/JnsJensen/dotfiles/main/dot_config/tmux/tmux.conf

echo "Installing micro"
curl https://getmic.ro | bash
mv ./micro ~/.local/bin/

fish setup-fish.fish && echo "Reload your terminal session"