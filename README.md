# Scripts for system setup

## Git

```console
$ bash <(curl -s https://raw.githubusercontent.com/loranen/gitconfig/refs/heads/main/addGitAlias.sh)
```

## Terminal
### Bash to case Insensitive
```bash
# Terminal restart needed
echo set completion-ignore-case on | sudo tee -a /etc/inputrc
```
### Reload settings
```bash
source ~/.bashrc
```

### Update and upgrade lupd.sh (**L**eevi**UPD**ate)
#### Install
```bash
chmod +x lupd.sh
mkdir -p ~/.local/bin
cp lupd.sh ~/.local/bin/lupd
# Add local/bin to PATH
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
# Reload terminal
source ~/.bashrc
```
#### Use
```bash
# To update ONLY
lupd
# Update, upgrade and autoremove
lupd p
```
