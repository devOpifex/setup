# Setup

Uses

- [NvChad](https://nvchad.com/)
- [nvim.conform](https://github.com/stevearc/conform.nvim)

Note this includes language servers, linters, formatters for:

- Javascript and Typescript
- Go
- R
- Sass

> Some instructions here assume you're running Linux

## NvChad

Install [NvChad](https://nvchad.com/)

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

Pick a [nerdfont](https://www.nerdfonts.com/) and install it. 

```bash
unzip myfont.zip -d ~/.fonts
fc-cache -fv
```

Then set as terminal font.

## Custom Config

Place the `custom` directory of this repo in `~/.config/nvim/lua/custom`

## Node

nvm for node version management (default Linux apt quite old)
or skip if you have a recent version of node

```bash
nvm install 20.9.0
nvm use 20.9.0
```

## Packages

Node packages

```bash
npm install -g eslint_d @fsouza/prettierd typescript-language-server typescript @johnnymorganz/stylua-bin vscode-langservers-extracted
```

R packages see [r.nvim](https://github.com/devOpifex/r.nvim)

```r
install.packages(c("languageserver", "lintr"))
remotes::install_github("gadenbuie/grkstyle")
remotes::install_github("devOpifex/r.nvim")
```

## Mason

Mason to install language servers

```
:MasonInstallAll
```

TS linters

```
:TSInstall html css go jsdoc r
```

