# LazyVim — Neovim configuration

This repository is a Neovim configuration based on LazyVim. LazyVim is a starter config that uses lazy.nvim (a fast plugin manager) and sensible defaults to provide a modern Neovim setup.

What is LazyVim?

- LazyVim is a curated Neovim configuration that focuses on modular, lazy-loaded plugins and easy customization.

What is in this repo?

- Basic LazyVim setup with common tools for editing, language servers, completion, fuzzy finding, git integration, and UI polish.

Key plugins and extras (short descriptions + example usage)

- lazy.nvim — plugin manager and lazy loader.
  - Example: :Lazy sync to install or update plugins.

- Mason + nvim-lspconfig — Language Server Protocol manager and config.
  - Example: gd (go to definition), K (hover), <leader>rn (rename), <leader>ca (code actions).

- nvim-cmp — Autocompletion framework with snippet support.
  - Example: Use <Tab>/<S-Tab> to navigate suggestions and Enter to confirm.

- Telescope — Fuzzy finder and pickers.
  - Example: <leader>ff (find files), <leader>fg (live grep), <leader>fb (list buffers).

- Treesitter — Incremental parsing for improved syntax highlighting and text objects.
  - Example: Better highlighting and faster code-aware motions.

- gitsigns.nvim — Git signs and hunk actions in the sign column.
  - Example: ]c / [c to jump to next/prev hunk, <leader>hs to stage hunk.

- Comment.nvim — Fast commenting operators.
  - Example: gcc to toggle comment on the current line, gc in visual mode to toggle selection.

- File explorer (neo-tree / nvim-tree) — Sidebar file tree.
  - Example: <leader>e to toggle the file explorer (mapping may vary).

- toggleterm.nvim — Integrated terminal management.
  - Example: <leader>tt to open a floating terminal (mapping may vary).

- which-key.nvim — Shows available keybindings after pressing the leader key.
  - Example: Press <leader> to see grouped mappings and hints.

Leader key

- The leader key is commonly set to Space (␣) in LazyVim-based configs. Press Space then another key to run leader mappings.

Customize

- Edit configuration files under lua/ to add or change plugins and settings.
- After changing plugins run :Lazy sync and restart Neovim.

Notes

- Key mappings can differ between setups. Use which-key (press <leader>) to see exact mappings in this config.
- See the official LazyVim docs for more details: https://lazyvim.github.io/installation
