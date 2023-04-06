# Neovim Config

- See `Notes.md` for a journal of thoughts and feelings
- See `Reference.md` for important keybindings and remaps

## Set Up

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

I will report back with the results. 

All seems well.

