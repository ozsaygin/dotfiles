# dotfiles

This repositories contains my personal dotfiles and system configurations.

## Installation

Clone the latest version of repository. 

```shell
git clone https://github.com/ozsaygin/dotfiles
```

Run installer script to migrate dotfiles into your system. 

```
./install 
```

You can suppress warnings and error messages with `--quite` flag.

## Backup

Run backup script which backs up your systems packages (Homebrew packages) and pushes updated version of dotfiles into the repository.

```shell
./backup
```

You can preferably use `--quite` flag to avoid verbosity. 

