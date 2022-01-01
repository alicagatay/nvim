# My init.vim config

This repository contains my init.vim setup for Neovim v0.6.0+. It is meant to start up instantly and it contains the stuff I use while developing programs with several languages like Python, JavaScript and more.

# Setting it up

## Install vim-plug:

Install vim-plug plugin with the command(this command is for Unix based systems, for other operating systems please look up to the web)

```sh
curl -fLo ~/nvim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

And then copy the configuration file to init.vim

Then run Neovim, ignore the errors, and call `:PlugInstall`

# Plugins I want to mention about
My Neovim configuration is using a good amount of plugins such as LSP and Startify. All the plugins that are in my init.vim file has a purpose to me, none of them are unessential. Here, I want to mention some of them and how to configure them.

## markdown-preview
This plugin helps me to preview markdown files as I write them on the browser of my choice. The one thing that I love about this plugin is that it updates the preview almost instantly as you type. The configuration of the plugin is also very simple. after calling `:PlugInstall` from the Neovim command line, change your directory to the folder of this plugin, and then type `yarn install` inside that folder. You are good to go. Once you open the markdown file that you want to edit, a preview of the file will appear automatically in your default browser.
## Language Server Protocol
I am using the default LSP support of Neovim with the help of `williamboman/nvim-lsp-installer`. The only reason for me to use this plugin is that it makes it so much easier to install the language server setup for any language just with the command `:LspInstall`.
## Startify

With this plugin, I have configured a start up screen that will open when you straightforward open Neovim without any files. To configure the contents of this for your likings, please read the help page by calling `:h Startify` inside Neovim.
