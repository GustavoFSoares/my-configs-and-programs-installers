sudo apt-get update -y && apt-get upgrade -y

# Install Wine
# sudo apt-get install wine -y &&
# sudo apt --fix-broken install &&
# sudo apt-get install wine32 -y

# Install NodeJS
sudo apt-get install nodejs -y

# Install NPM
sudo apt-get install npm -y

# Install GIT
sudo apt-get install git -y

# NPM Install YARN
sudo npm i yarn -g

# NPM Install WebPack
# sudo npm i webpack -g

# Install CURL
sudo apt-get install curl -y

# Download Hercules
# sudo mkdir /win/
# sudo curl https://www.hw-group.com/files/download/sw/version/hercules_3-2-8.exe --output /win/hercules_3-2-8.exe2
# sudo echo "
# [Desktop Entry]
# Type=Application
# Name=Hercules
# Exec=/usr/bin/wine /win/hercules_3-2-8.exe
# Icon=/win/hercules.svg
# Terminal=False" > ~/.local/share/applications/hercules.desktop

# Download Spotfy
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

# Install MySQL
# wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb
# sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb

# wget https://downloads.mysql.com/archives/get/file/mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb
# sudo apt install -fy
# sudo dpkg -i mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb

# Fixar Dock
# Acessar: https://extensions.gnome.org/extension/307/dash-to-dock/

# Install Robo3t
sudo mkdir /usr/bin/robo3t
sudo wget https://download-test.robomongo.org/linux/robo3t-1.3.1-linux-x86_64-7419c406.tar.gz -O /usr/bin/robo3t/robo3t.tar.gz
sudo wget https://spotfolio.com/wp-content/uploads/2017/03/robomongo-1024x1024-bfaf4052.png -O /usr/bin/robo3t/icon.png
sudo tar -zxvf /usr/bin/robo3t/robo3t.tar.gz -C /usr/bin/robo3t
sudo mv /usr/bin/robo3t/robo3t-1.3.1-linux-x86_64-7419c406/* /usr/bin/robo3t
sudo rm -rf /usr/bin/robo3t/robo3t-1.3.1-linux-x86_64-7419c406
sudo echo "
[Desktop Entry]
Type=Application
Name=Robo 3T
Exec=/usr/bin/robo3t/bin/robo3t
Icon=/usr/bin/robo3t/icon.png
Terminal=False" > ~/.local/share/applications/robo3t.desktop

# Install PPTP (VPN)
# sudo apt install network-manager-pptp network-manager-pptp-gnome

# Install JDK
# echo "DOWNLOAD JDK ON 'https://www.oracle.com/technetwork/java/javase/downloads/jdk11-downloads-5066655.html' and Install It"
# dpkg -i jdk-11.0.5_linux-x64_bin.deb

# Install Oracle SqlDeveloper
# echo "DOWNLOAD Sqldeveloper ON 'https://www.oracle.com/br/tools/downloads/sqldev-v192-downloads.html'"
# sudo apt install rpm install alien dpkg-dev debhelper build-essential
# sudo alien sqldeveloper-19.2.1.247.2212.noarch.rpm
# sudo dpkg -i sqldeveloper_19.2.1-248.2212_all.deb
# echo "RUN sqldeveloper and type your Java JDK in /usr/lib/jvm"
# sqldeveloper
# sudo wget https://upload.wikimedia.org/wikipedia/en/thumb/6/68/Oracle_SQL_Developer_logo.svg/1200px-Oracle_SQL_Developer_logo.svg.png -O /opt/sqldeveloper/icon-deb.png

# echo "DOWNLOAD Oracle Instant Client ON 'https://www.oracle.com/br/database/technologies/instant-client/linux-x86-64-downloads.html'"
# sudo alien oracle-instantclient19.5-basic-19.5.0.0.0-1.x86_64.rpm
# sudo dpkg -i oracle-instantclient19.5-basic_19.5.0.0.0-2_amd64.deb

# sudo echo "
# [Desktop Entry]
# Type=Application
# Name=Oracle SqlDeveloper
# Exec=sqldeveloper
# Icon=/opt/sqldeveloper/icon-deb.png
# Terminal=False" > ~/.local/share/applications/sqldeveloper.desktop

# Install Docker
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y
sudo apt-get remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
# echo "Verificar se sistema estรก rodando"
# sudo systemctl status docker

echo "Para adicionar docker ao sudoers"
sudo groupadd docker
sudo usermod -aG docker ${USER}
newgrp docker
# id -nG
echo "E verifique se foi adicionao ao grupo docker"

echo "Adicionar Docker-componse"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Install Fonts
echo "Adicionando Fira-Code"
sudo apt install fonts-firacode -y

echo "Adicionando Nerd-Fonts"
curl -fLo "~/.local/share/fonts/Hurmit\ Medium\ Nerd\ Font\ Complete.otf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf
curl -fLo "~/.local/share/fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
curl -fLo "~/.local/share/fonts/Hurmit\ Medium\ Nerd\ Font\ Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf

mkdir ~/.local/share/fonts
curl https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf > ~/.local/share/fonts/Hurmit\ Medium\ Nerd\ Font\ Complete.otf
curl https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf > ~/.local/share/fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf
sudo fc-cache -fv


# Install ZSH
echo "Instalando ZSH"
sh ./zsh/zsh-installer.sh

# Config git user
echo "Configurando GIT"
git config --global user.email "gustavo.fe.soares@gmail.com"
git config --global user.name "Gustavo Soares"
