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