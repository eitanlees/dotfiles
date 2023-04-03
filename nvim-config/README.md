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

I will report back with the results. All seems well.

## Tele

```lua
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
```


| Mappings       | Action                                               |
|----------------|------------------------------------------------------|
| `<C-n>/<Down>` | Next item                                            |
| `<C-p>/<Up>`   | Previous item                                        |
| `j/k`          | Next/previous (in normal mode)                       |
| `H/M/L`        | Select High/Middle/Low (in normal mode)              |
| `gg/G`         | Select the first/last item (in normal mode)          |
| `<CR>`         | Confirm selection                                    |
| `<C-x>`        | Go to file selection as a split                      |
| `<C-v>`        | Go to file selection as a vsplit                     |
| `<C-t>`        | Go to a file in a new tab                            |
| `<C-u>`        | Scroll up in preview window                          |
| `<C-d>`        | Scroll down in preview window                        |
| `<C-/>`        | Show mappings for picker actions (insert mode)       |
| `?`            | Show mappings for picker actions (normal mode)       |
| `<C-c>`        | Close telescope                                      |
| `<Esc>`        | Close telescope (in normal mode)                     |
| `<Tab>`        | Toggle selection and move to next selection          |
| `<S-Tab>`      | Toggle selection and move to prev selection          |
| `<C-q>`        | Send all items not filtered to quickfixlist (qflist) |
| `<M-q>`        | Send all selected items to qflist                    |


## LSP

To install various LSP's use the `:LspInstall` command as needed. 

### Keybindings

|Key|Def|
|---|---|
|`K`|Displays hover information about the symbol under the cursor in a floating window. |
|`gd`|Jumps to the definition of the symbol under the cursor. |
|`gD`|Jumps to the declaration of the symbol under the cursor. Some servers don't implement this feature. |
|`gi`|Lists all the implementations for the symbol under the cursor in the quickfix window. |
|`go`|Jumps to the definition of the type of the symbol under the cursor. |
|`gr`|Lists all the references to the symbol under the cursor in the quickfix window. |
|`gs`|Displays signature information about the symbol under the cursor in a floating window. |
|`<F2>`|Renames all references to the symbol under the cursor. |
|`<F3>`|Format code in current buffer. |
|`<F4>`|Selects a code action available at the current cursor position. |
|`gl`|Show diagnostics in a floating window. |
|`[d`|Move to the previous diagnostic in the current buffer. |
| `]d`|Move to the next diagnostic. |
