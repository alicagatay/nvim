# My init.vim config
This repository contains my minimalist and productive init.vim configuration for Neovim v0.6.0+. It is meant to start up instantly and it contains stuff that helps me become more productive while programming.

# Setting it up

## Install vim-plug:

Install vim-plug plugin with the command below if you don't have Vim Plug installed already(this command is for Unix based systems, for other operating systems please look up to the web)

```sh
curl -fLo ~/path/to/your/nvim/configuration/folder/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

And then copy the stuff inside the init.vim file on this repository to the init.vim file on your device(if you dont have an init.vim file, create one by `nvim init.vim`)


Then run Neovim, ignore the errors, and call `:PlugInstall`

# Plugins I want to mention about
My Neovim configuration is using a good amount of plugins such as the built in Language Server Protocol and Telescope. All the plugins that are in my init.vim file has a purpose to me, none of them are unessential. Here, I want to mention some of them and how to configure them.

## markdown-preview 
This plugin helps me to preview markdown files as I write them on the browser of my choice. The one thing that I love about this plugin is that it updates the preview almost instantly as you type. The configuration of the plugin is also very simple. after calling `:PlugInstall` from the Neovim command line, change your directory to the folder of this plugin, and then type `yarn install` inside that folder. You are good to go. Once you open the markdown file that you want to edit, a preview of the file will appear automatically in your default browser.
## Language Server Protocol
I am using the default LSP support of Neovim with the help of `williamboman/nvim-lsp-installer`. The only reason for me to use this plugin is that it makes it so much easier to install the language server setup for any language just with the command `:LspInstall`.
## Telescope
This plugin is so similar to `junegunn/fzf.vim`, but this is more integrated to Neovim rather than Vim(at least in my opinion). It lets you search through your directories for both file names and words inside files.
## Most Recently Used (MRU)
This plugins helps me to view my file editing history within Neovim and lets me open them instantly.
## Github Copilot
This plugin allows me to use the Github Copilot engine inside Neovim. The reason for me using Github Copilot is not to let the bot write the code, it is there just to give me different ideas to accomplish different problems that occurs in my code(which I believe should be the only use case for it anyways).


# Conclusion
While creating this configuration, I tried to keep it as minimal as possible while also making it productive. So I added features in it only if it was necessary or if it made my workflow more productive. Same with the plugins. I tried to keep the number of plugins as small as possible, while trying to keep the configuration productive. Hope you will like it, and if you have any problems or feature requests, you can submit them through issues or pull requests tabs of GitHub.

Note: To learn more about the plugins both for the ones I mentioned in this text and didn't mention, you can search them through the web(all of them have excellent docs).
