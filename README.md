# Personal .vimrc config and .vim/ directory

Just clone this repository to your local `~/.vim` folder and run the `setup.sh` script once.

This repository contains a `vimrc` file which is in a non-default location. The `setup.sh` script creates a hard link from `~/.vim/vimrc` to `~/.vimrc`.

## Purpose

Provides extensive VIM and MacVIM configuration for the everyday commandline hacker. It is particular usefull to edit Puppet manifests. It can also serve as your starting point if you want to enter the VIM auto-complete magic.

## VIM plugins

This configuration contains VIM plugins which are managed through the [pathogen.vim](https://github.com/tpope/vim-pathogen) package/plugin manager for VIM. Pathogen installs an autoload VIM plugin to `.vim/autoload` which then in turn loads all plugins found in `.vim/bundles`. Bundles can either be pulled from GIT repositories or from the [vim.org scripts library](http://www.vim.org/scripts).

The list of managed scripts in `.vim/bundles` is maintained through the `.vim/update_bundles` Ruby script. Which was originally stolen from [Patrick Debois](http://www.jedi.be/blog/2011/12/05/puppet-editing-like-a-pro/) and [Tammer Saleh](http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/).

## Prerequisites

This tool quite obviously requires vim. A current version of bash but also a ruby installation.
