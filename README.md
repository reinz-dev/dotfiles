# Dotfile by Reinz

### Kitty Terminal (starship, ranger, tmux, nvim)

![terminal](https://user-images.githubusercontent.com/110806427/207852287-5e8869c1-aa46-44ff-8f54-d45702868083.png)

-- if you like this configuration on archlinux, let's follow step by step te installation. --



##### 1 . install kitty terminal

```git
sudo pacman -S fish kitty ranger tmux exa neofetch
```

##### 2. Set default shell

```git
which fish
sudo chsh -s /usr/bin/fish
```

##### 3.  Copy dotfile to $HOME/username

```git
git clone https://github.com/reinzcity/dotfiles.git
cp -rf dotfiles/ . $HOME
```
