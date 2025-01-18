# MineItRiGrEight's Neovim configuration

## Installation

### Prerequisites

- Neovim >= 0.10
- ripgrep
- fd
- [Node.js](https://nodejs.org/)
- tree-sitter-cli (only necessary when `auto_install` is set to true in core.plugins.treesitter.opts)
- font with icons and Powerline glyphs (for example [JetBrains Mono](https://jetbrains.com/mono))

#### Installation of the prerequisites except Node.js on Arch Linux

```sh
sudo pacman -S --needed neovim ripgrep fd ttf-jetbrains-mono-nerd tree-sitter-cli
```

#### Installation of the prerequisites except Node.js and tree-sitter-cli on macOS

```sh
brew install neovim ripgrep fd font-jetbrains-mono-nerd-font
```

#### Installation of [Node.js](https://nodejs.org/en)

Via [Node Version Manager](https://nvm.sh/) preferably

#### Installation of tree-sitter-cli using npm

```sh
npm install tree-sitter-cli
```

### Installation

#### Standalone (to `$XDG_CONFIG_HOME/nvim`, as a normal Neovim config)

1. Clone the repository
   ```sh
   git clone https://codeberg.org/mirge/nvim-cfg.git ~/.config/nvim
   ```
2. Copy the template `init.lua` (`init.lua.tpl`) to `init.lua`
   ```sh
   cd ~/.config/nvim
   cp init.lua.tpl init.lua
   ```
3. Launch Neovim
   ```sh
   nvim
   ```

4. Exit Neovim

## Default configuration

```lua
{
  standalone = true,
  notes_dir = "~/Nextcloud/notes", -- The notes dir, only used for the
}                                  -- `<Leader>fn` keybind
```

## Keymaps

Use `<Leader>kf` (default `<Leader>` is space) to see all keybinds.

> [!NOTE]
> This Neovim config uses [kak.nvim](https://codeberg.org/mirge/kak.nvim), so it has Kakoune-like keybinds.
