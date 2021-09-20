# My init.vim config

This repository contains my init.vim setup for Neovim v0.5.0+. It is meant to start up instantly and it contains the stuff I use while developing programs with several languages like Python, JavaScript and more.

# Setting it up

## Install vim-plug:

Install vim-plug plugin with the command(for Unix, for other operating systems please look up to the web)

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

And then copy the configuration file to init.vim

Then run Neovim, ignore the errors, and call `:PlugInstall`

## Language Server Protocol

This configuration includes some lines about setting LSP up for some languages such as Python and JavaScript. If you don't want these, or want to change the languages inside, please search the web for more information about NeoVim and it's LSP support

## Startify

In this configuration, I have configured a start up screen that will open when you straightforward open Neovim without any files. To configure the contents of this for your likings, please read the call `:h Startify` from Neovim.
