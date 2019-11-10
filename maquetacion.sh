sudo apt-get update && 

sudo apt-get install -y i3 cherrytree grc rhythmbox flameshot arandr lxappearance i3blocks feh thunar parallel rofi &&

echo "alias nmap='grc nmap'" >> ~/.bash_aliases && 

cd ~/Downloads && 

git clone https://github.com/DeadS3c/Configuration.git && 

mv Configuration/i3 ~/.config/ && 

mv Configuration/.tmux.conf ~/ && 

mkdir -p ~/.vim/swp && 

mv Configuration/vimrc ~/.vim/ &&

rm -rf Configuration

cd ~/.config/i3/ &&

echo "You may want to install Moka icons"
