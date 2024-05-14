# MineItRiGrEight's Neovim configuration

<!--toc:start-->
- [MineItRiGrEight's Neovim configuration](#mineitrigreights-neovim-configuration)
  - [Installation](#installation)
    - [Prerequisites](#prerequisites)
      - [Installation of the prerequisites except Node.js, tree-sitter-cli and font on macOS (and Linux, probably) with [Homebrew](https://brew.sh/)](#installation-of-the-prerequisites-except-nodejs-tree-sitter-cli-and-font-on-macos-and-linux-probably-with-homebrewhttpsbrewsh)
      - [Installation of Node.js](#installation-of-nodejs)
      - [Installation of JetBrains Mono on Linux and macOS](#installation-of-jetbrains-mono-on-linux-and-macos)
      - [Installation of tree-sitter-cli](#installation-of-tree-sitter-cli)
    - [Installation](#installation)
      - [Standalone (to `$XDG_CONFIG_HOME/nvim`, as a normal Neovim config)](#standalone-to-xdgconfighomenvim-as-a-normal-neovim-config)
  - [Default configuration](#default-configuration)
  - [Keymaps](#keymaps)
<!--toc:end-->

## Installation

### Prerequisites

- Neovim >= 0.9.0
- ripgrep
- fd
- [Node.js](https://nodejs.org/)
- tree-sitter-cli (only necessary when `auto_install` is set to true in core.plugins.treesitter.opts)
- font with icons and Powerline glyphs (for example [JetBrains Mono](https://jetbrains.com/mono))

#### Installation of the prerequisites except Node.js, tree-sitter-cli and font on macOS (and Linux, probably) with [Homebrew](https://brew.sh/)

```sh
brew install neovim ripgrep fd
```

#### Installation of Node.js

Via [Node Version Manager](https://nvm.sh/) (recommended)

#### Installation of JetBrains Mono on Linux and macOS

1. Go to JetBrains Mono's website and download the font
2. Extract the archive to ~/.local/share/fonts/
3. Run `fc-cache -f -v` to refresh your font cache
4. Set the font of your terminal emulator to JetBrains Mono

#### Installation of tree-sitter-cli

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

**Note**: This Neovim config uses [kak.nvim](https://codeberg.org/mirge/kak.nvim), so it has Kakoune-like keybinds.
