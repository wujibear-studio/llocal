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
If you'd rather the hands-on approach, all you to do is clone the repo and source the `init.zsh` file.
```shell
git clone git@github.com:wujibear-studio/llocal.git $HOME/.llocal
```

Add the following to the top of your `~/.zshrc` file (or replace it with):
```shell
source $HOME/.llocal/init.zsh
```

## Usage
Your user defined aliases, functions, exports, and partials are just `.zsh` files. 
They get stored in your `~/.llocal/user/<folder>`, where `<folder>` is the folder with the same name of its type. e.g., `~/.llocal/user/exports`

### Things you'll use:
- `llist` - Lists all commands/things in llocal core and user directories with descriptions
- `llalias <name> <value>` - Creates an alias with a key of the `<name>` input, and its value is `<value>`
- `llexport <name> <value>` - Creates an export with a key of the `<name>` input, and its value is `<value>`
- `llfunction <name>` - Creates a `<name>` function from a template
- `llpartial <name>` - Creates a `<name>` partial, and opens it in your defined `$EDITOR`
- `llsource` - Sources `$LLOCAL_SHELL`, which defaults to `$HOME/.zshrc`
- `lledit -<type> <name>` - Opens the `<name>.zsh` file from the matching `<type>` of directory in your `$EDITOR`. `<type>` is one of the initials for `e`xport, `p`artial, `a`lias, or `f`unction.
- `llrm -<type> <name>` - Removes the `<name>.zsh` file from the matching `<type>` of directory, where `<type>` is one of the initials for `e`xport, `p`artial, `a`lias, or `f`unction.

Llocal is made up of re-usable shell functions, call `llist` or view them in the `.llocal/core` directory.

## Backing up your stuff

There's a few different third-party tools we'd recommend for backing up your user defined shell scripts.

- [yadm](https://yadm.io/) Helps you track all your dotfiles. Just add your files by running `yadm add ~/.llocal/user`
- [mackup](https://github.com/lra/mackup) Not an official integration, but you could install llocal to the `.config/llocal` directory and set `$LLOCAL_DIR` to be `$HOME/.config/llocal`
- [brew bundle](https://github.com/Homebrew/homebrew-bundle) - You're probs already using `brew`, but tracking your installed packages with it is super great. Then you can also track that with one of these other tools.