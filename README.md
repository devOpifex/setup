# Setup

## NvChad

Install NvChad

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

Pick a [nerdfont](https://www.nerdfonts.com/) and install it. 

```
unzip myfont.zip -d ~/.fonts
fc-cache -fv
```

Then set as terminal font.

Get this config:

```bash
git clone https://github.com/devOpifex/setup ~/.config/nvim/lua/custom
```

nvm for node version management (default Linux apt quite old)

```bash
nvm install 20.9.0
nvm use 20.9.0
```

Node packages

```bash
npm install -g eslint_d @fsouza/prettierd typescript-language-server typescript @johnnymorganz/stylua-bin
```

R packages

```r
install.packages(c("languageserver", "lintr"))
remotes::install_github("gadenbuie/grkstyle")
remotes::install_github("devOpifex/r.nvim")
```

Mason

```
:MasonInstallAll
```

TS

```
:TSInstall html css go jsdoc r
```

nerdfont
