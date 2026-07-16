# Installation instructions
## Linux
1. Download neovim 0.12
2. Copy neovim config: ```./install.sh```
3. Build and install tree-sitter: ```cargo install --locked tree-sitter-cli```
    - **NOTE:** Using ```:MasonInstall tree-sitter-cli``` will download a version of ```tree-sitter-cli``` that links to the wrong version of glibc often so best to build from scratch

## Windows
1. Download neovim 0.12
2. Link junction for neovim config: ```pwsh ./install.ps1```
3. Download and install
    - Option 1 using Github: [tree-sitter](https://github.com/tree-sitter/tree-sitter/releases)
    - Option 2 using Mason inside neovim: ```:MasonInstall tree-sitter-cli```

## Install ripgrep for telescope
- [repository](https://github.com/BurntSushi/ripgrep).
- Requires rust toolchain on Windows.
    - Run ```cargo install ripgrep```.
    - Make sure ```~/.cargo/bin/``` is in the path for ```rg.exe``` to be present.
- On linux with a package manager install ```ripgrep```

## Setup compiler for treesitter parser and LSP servers
- On windows make ```cl.exe``` available by opening MSVC x64 developer environment.
- Then open ```nvim``` and let it automatically compile the parsers and LSPs.

# Bindings
## File tree
| Binding       | Description |
| ------------- | ----------- |
| ```<leader>mo``` | File tree open |
| ```<leader>mc``` | File tree close |
| ```<leader>mt``` | File tree toggle |

## Undo tree
| Binding       | Description |
| ------------- | ----------- |
| ```<leader>uo``` | Undo tree open |
| ```<leader>uc``` | Undo tree close |
| ```<leader>ut``` | Undo tree toggle |

## Telescope
| Binding       | Description |
| ------------- | ----------- |
| ```<leader>p```   | Open git files |
| ```<leader>fp```  | Open workspace files |
| ```<leader>fb```  | Open buffers |
| ```<leader>fw```  | Open rip grep |
| ```<leader>fgf``` | Open git files |
| ```<leader>fgs``` | Open git status |
| ```<leader>fgb``` | Open git branches |
| ```<leader>flr``` | Open lsp references |
| ```<leader>fle``` | Open lsp diagnostic for current buffer |
| ```<leader>flE``` | Open lsp diagnostics for all buffers |
| ```<leader>flo``` | Open lsp outline of document |
| ```<leader>flO``` | Open lsp full outline of document |
| ```<leader>fq```  | Open quickfix buffer |
| ```<leader>fh```  | Open help |

## LSP
| Binding       | Description |
| ------------- | ----------- |
| ```<leader>lr``` | View workspace references |
| ```<leader>ld``` | Jump to definition |
| ```<leader>lh``` | View brief description |
| ```<leader>ls``` | View workspace symbol |
| ```<leader>la``` | View code actions |
| ```<leader>lR``` | Rename symbol |
| ```<leader>lH``` | View signature help |
| ```<leader>lv``` | View diagnostic expanded |
| ```<leader>ln``` | View next diagnostic |
| ```<leader>lp``` | View prev diagnostic |

## LSP override
Override regular binds to use LSP if available
| Binding       | Description |
| ------------- | ----------- |
| ```<C-p>    ``` | Select next symbol |
| ```<C-n>    ``` | Select previous symbol |
| ```<C-y>    ``` | Confirm |
| ```<C-space>``` | Complete |

## Tabs
| Binding       | Description |
| ------------- | ----------- |
| ```<leader>tn``` | New tab |
| ```<leader>tc``` | Close tab |
| ```<leader>th``` | Move tab left |
| ```<leader>tl``` | Move tab right |

## Other
| Binding       | Description |
| ------------- | ----------- |
| ```<leader>b``` | Swap to last used in pane |
