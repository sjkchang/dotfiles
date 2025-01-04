# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

### Oh My Posh
```
curl -s https://ohmyposh.dev/install.sh | bash -s
```
or 
```
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d <install path>
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/sjkchang/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

