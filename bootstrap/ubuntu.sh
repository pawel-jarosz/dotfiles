sudo apt install -y fzf cmake neovim unzip
sudo apt install -y pkg-config libssl-dev build-essential
curl -s https://ohmyposh.dev/install.sh | bash -s
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo snap install --classic nushell

curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
cd rclone-*-linux-amd64
sudo cp rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb
rclone config
cd ..
rm -rf rclone*

