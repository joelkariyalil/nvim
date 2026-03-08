# Neovim keymap reference

**Leader:** `<Space>`  
**Local leader:** `\`

---

## Finding commands

| Key       | Action                          |
|----------|----------------------------------|
| `<Space>` (then wait) | Which-key: show all leader keymaps |
| `<Space>?`           | Buffer-local keymaps only        |
| `:Telescope keymaps` | Search all keymaps              |

---

## File explorer (nvim-tree)

| Key        | Action                |
|-----------|------------------------|
| `<Space>ee` | Toggle file explorer   |
| `<C-w>e`    | Toggle file explorer   |
| `<Space>ec` | Collapse tree          |
| `<Space>er` | Refresh tree          |
| `<Space>ef` | Reveal current file in tree |

---

## Splits & windows

| Key        | Action                  |
|-----------|-------------------------|
| `<Space>sv` | Vertical split         |
| `<Space>sh` | Horizontal split       |
| `<Space>se` | Equalize window sizes  |
| `<Space>sx` | Close current window   |
| `<C-w>w`    | Next window            |
| `<C-w>h/j/k/l` | Move focus left/down/up/right |
| `<C-w>e`    | Toggle file explorer   |

---

## Tabs

| Key        | Action              |
|-----------|---------------------|
| `<Space>to` | New tab             |
| `<Space>tx` | Close tab           |
| `<Space>tn` | Next tab            |
| `<Space>tp` | Previous tab        |
| `<Space>tf` | New tab with current file |

---

## Telescope (find / search)

| Key        | Action           |
|-----------|-------------------|
| `<Space>f`  | Fuzzy find files  |
| `<Space>g`  | Live grep project |
| `<Space>ff` | Find files        |
| `<Space>fr` | File history     |
| `<Space>fs` | Live grep         |
| `<Space>fc` | Grep under cursor |
| `<Space>fp` | Diagnostics      |

---

## LSP (when a language server is attached)

| Key         | Action                    |
|------------|----------------------------|
| `gd`       | Go to definition           |
| `gD`       | Go to declaration          |
| `gR`       | References                 |
| `gi`       | Implementations            |
| `gt`       | Type definition            |
| `K`        | Hover documentation       |
| `<Space>ca` | Code action (n/v)         |
| `<Space>rn` | Rename symbol              |
| `<Space>d`  | Line diagnostics (float)  |
| `<Space>D`  | Buffer diagnostics (Telescope) |
| `[d`       | Previous diagnostic       |
| `]d`       | Next diagnostic           |
| `<Space>rs` | Restart LSP               |

---

## Trouble (diagnostics / lists)

| Key         | Action                 |
|------------|------------------------|
| `<Space>xx` | Toggle diagnostics     |
| `<Space>xX` | Buffer diagnostics    |
| `<Space>cs` | Symbols                |
| `<Space>cl` | LSP refs/defs          |
| `<Space>xL` | Location list          |
| `<Space>xQ` | Quickfix list          |

---

## Snacks (zen, scratch, git, terminal, etc.)

| Key         | Action                    |
|------------|----------------------------|
| `<Space>z`  | Toggle zen mode           |
| `<Space>Z`  | Toggle zoom               |
| `<Space>.`  | Toggle scratch buffer    |
| `<Space>S`  | Select scratch buffer    |
| `<Space>n`  | Notification history      |
| `<Space>bd` | Delete buffer            |
| `<Space>cR` | Rename file              |
| `<Space>gB` | Git browse (n/v)         |
| `<Space>gb` | Git blame line           |
| `<Space>gf` | Lazygit file history     |
| `<Space>gg` | Lazygit                  |
| `<Space>gl` | Lazygit log (cwd)        |
| `<Space>un` | Dismiss notifications    |
| `§` or `<C-_>` | Toggle terminal     |
| `]]`       | Next reference           |
| `[[`       | Previous reference       |
| `<Space>N`  | Neovim news              |

---

## Snacks toggles (from init, press then key)

| Key        | Action            |
|-----------|--------------------|
| `<Space>us` | Spelling          |
| `<Space>uw` | Wrap              |
| `<Space>uL` | Relative number   |
| `<Space>ud` | Diagnostics       |
| `<Space>ul` | Line number       |
| `<Space>uc` | Conceal level     |
| `<Space>uT` | Treesitter        |
| `<Space>ub` | Dark background   |
| `<Space>uh` | Inlay hints       |
| `<Space>ug` | Indent guides     |
| `<Space>uD` | Dim inactive      |

---

## Multi-cursor

| Key           | Action                        |
|---------------|-------------------------------|
| `<C-J>` / `<C-Down>`  | Add cursor down      |
| `<C-K>` / `<C-Up>`    | Add cursor up        |
| `<C-LeftMouse>`       | Add/remove cursor   |
| `<Space>a`     | Add cursors to word  |
| `<Space>A`     | Add cursors (previous area) |
| `<Space>d`     | Add cursor & jump to next match |
| `<Space>D`     | Jump to next match  |
| `<Space>l`     | Lock cursors        |

---

## Formatting

| Key        | Action                          |
|-----------|----------------------------------|
| `<Space>mp` | Format file or selection (conform) |

---

## Go (in Go buffers)

| Key          | Action                |
|-------------|------------------------|
| `<Space>gie`  | Add if err boilerplate |
| `<Space>gatj` | Add JSON tags to struct |
| `<Space>gaty` | Add YAML tags to struct |
| `<Space>gfs`  | Fill struct           |
| `<Space>gaat` | Add all tests         |

---

## Python / venv

| Key   | Action           |
|-------|-------------------|
| `,v`  | VenvSelect (pick venv) |

---

## Other

| Key        | Action                    |
|-----------|----------------------------|
| `<Space>sl` | Treesitter join/split (treesj) |
| **Commentary** | `gc` (motion/line) or `gcc` to comment line |
| **Fugitive** | `:G` etc. (no custom keys in config) |
| **Terminal** (inside term buffer) | `<C-h/j/k/l>` move between windows, `<Esc>` normal mode |

---

*Generated from your config. Open this file anytime: `:e ~/.config/nvim/KEYMAPS.md`*
