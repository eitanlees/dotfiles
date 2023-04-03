# Neovim Config


The `dev` script simply deletes any exhisting nvim config and 
symlinks this repo. 

```
./dev
```

Then install packer:

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Run `:PackerSync` to download all of the packages. I am not sure if this will or will 
not fail and need to be run more than once. We will see. 

Finally to install various LSP's use the `:LspInstall` command as needed. 

I am going to give it a shot by trying to get set up on a new computer. 

I will report back with the results.
