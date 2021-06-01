sudo apt install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

curl -fLo "~/.local/share/fonts/MesloLGS NF Regular.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
curl -fLo "~/.local/share/fonts/MesloLGS NF Bold.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/b4b4r07/enhancd.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/enhancd

echo "Put this on .zshrc"
echo 'export ZSH="/home/gustavo/.oh-my-zsh"'
echo 'ZSH_THEME="powerlevel10k/powerlevel10k"'
echo '
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  enhancd
)
'

exec "cat ./zsh/.p10k.zsh.config > ~/.10k.zsh"
chsh -s $(which zsh)