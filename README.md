# Dotfile by Reinz

### Kitty Terminal (starship, ranger, tmux, nvim)

![kitty-terminal](https://user-images.githubusercontent.com/110806427/207857512-0c2c01c5-3501-4196-9bbb-8881018e403e.png)

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
cd dotfiles/
cp -rf . $HOME
```
