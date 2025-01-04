# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git [Install](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### Stow

```
apt install stow
```

### Oh My Posh
```
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d <install path>
```

### FZF
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### TheFuck [Install](https://github.com/nvbn/thefuck?tab=readme-ov-file#installation)

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

