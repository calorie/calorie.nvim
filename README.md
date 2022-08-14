calorie.nvim
===

An easy on eyes color scheme for Neovim.
Based on [wombat](https://www.vim.org/scripts/script.php?script_id=1778) and [Rosé Pine](https://github.com/rose-pine/neovim).

## default

![image](https://user-images.githubusercontent.com/1681408/184120238-c3a96b39-f71b-49cc-ae01-f2c14a5a6943.png)

## Tree-sitter

![image](https://user-images.githubusercontent.com/1681408/184500379-4b747b72-73da-49e3-b609-6be388d69262.png)

## Installation

```
call dein#add('rktjmp/lush.nvim', { 'lazy': 1 })
call dein#add('calorie/calorie.nvim', { 'depends': ['lush.nvim'] })

set termguicolors
colorscheme calorie
```

## Notes

This was built with [lush.nvim](https://github.com/rktjmp/lush.nvim).
