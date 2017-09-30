# Dotfiles

These are my beloved config files. Feel free to steal, share and comment. You
might want to use `stow`, in order to install the config files. Your configuration
files will be symlinks to the files, stored in the repositories.

# Setup stow

```
# On Arch Linux
sudo pacman -S stow

# via apt-get for Linux
sudo apt-get install stow
```

# Use stow

```
# Clone this repository
cd ~/git
git clone https://github.com/ellcs/dotfiles
cd dotfiles

# In order to install my vim config files, you have to be in this cloned
# repository and use stow as shown below.
# The first argument 'vim' specifies config files to install. It's the foldername.
# -t specifies the directory, where the config files will be installed.
#    Default is the parent directory.
#
stow vim -t ~
```
