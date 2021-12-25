# My init.vim config

This repository contains my init.vim setup for Neovim v0.6.0+. It is meant to start up instantly and it contains the stuff I use while developing programs with several languages like Python, JavaScript and more.

# Setting it up

## Install vim-plug:

Install vim-plug plugin with the command(this command is for Unix based systems, for other operating systems please look up to the web)

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

And then copy the configuration file to init.vim

Then run Neovim, ignore the errors, and call `:PlugInstall`

# Plugins I want to mention about
My Neovim configuration is using a good amount of plugins such as LSP and Startify. All the plugins that are in my init.vim file has a purpose to me, none of them are unessential. Here, I want to mention some of them and how to configure them.

## markdown-preview
This plugin helps me to preview markdown files as I write them on the browser of my choice. The one thing that I love about this plugin is that it updates the preview almost instantly as you type. The configuration of the plugin is also very simple. after calling `:PlugInstall` from the Neovim command line, change your directory to the folder of this plugin, and then type `yarn install` inside that folder. You are good to go. 

Once you opened a markdown file, you can preview it with the command `:MarkdownPreview`. To close the preview, simply close the file.

## Language Server Protocol

The LSP plugin includes some lines about setting LSP up for some languages such as Python and JavaScript. If you don't want these, or want to change the languages inside, please search the web for more information about Neovim and it's LSP support

## Startify

With this plugin, I have configured a start up screen that will open when you straightforward open Neovim without any files. To configure the contents of this for your likings, please read the help page by calling `:h Startify` inside Neovim.
