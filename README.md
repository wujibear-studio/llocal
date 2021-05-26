# LLOCAL
---
## TL;DR
LLOCAL adds some core shell functions that lets you do CRUD operations on your shell exports, aliases, functions, and partials.
It was made with zsh in mind, but should work fine for those using bash.

## Table of Contents:
1. [TL;DR](#tl-dr)
2. [Table of Contents](#table-of-contents)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Backing up your stuff](#backing-up-your-stuff)

## Installation
You can install and use `llocal` by cloning the repo.

### Quick Install
Run this to download the source to a `.llocal` directory and migrate your current `.zshrc` file to use `llocal`.

```shell
git clone git@github.com:wujibear-studio/llocal.git $HOME/.llocal && $HOME/.llocal/install.zsh
```

### Cloning
You'll want to clone this repo to your home folder under `.llocal`
```shell
git clone git@github.com:wujibear-studio/llocal.git $HOME/.llocal
```

Add the following to the top of your `~/.zshrc` file:
```shell
source $HOME/.llocal/init.zsh
```

## Usage
Your user defined aliases, functions, exports, and partials are just `.zsh` files. 
They get stored in your `~/.llocal/user/<folder>`, where `<folder>` is the folder with the same name of its type. e.g., `~/.llocal/user/exports`

### Things you'll use:
- `llalias <name> <value>` - Creates an alias with a key of the `<name>` input, and its value is `<value>`
- `llexport <name> <value>` - Creates an export with a key of the `<name>` input, and its value is `<value>`
- `llsource` - Sources `$LLOCAL_SHELL`, which defaults to `$HOME/.zshrc`

Llocal is made up of re-usable shell functions, the full list of them can be found in the `.llocal/core` directory.

## Backing up your stuff

There's a few different third-party tools we'd recommend for backing up your user defined shell scripts.

- [yadm](https://yadm.io/) Helps you track all your dotfiles. Just add your files by running `yadm add ~/.llocal/user`
- [mackup](https://github.com/lra/mackup) Not an official integration, but you could install llocal to the `.config/llocal` directory and set `$LLOCAL_DIR` to be `$HOME/.config/llocal`
- [brew bundle](https://github.com/Homebrew/homebrew-bundle) - You're probs already using `brew`, but tracking your installed packages with it is super great. Then you can also track that with one of these other tools.