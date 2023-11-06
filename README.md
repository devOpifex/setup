# Setup

## NvChad

Install NvChad

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

Get this config

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
npm install -g eslint_d @fsouza/prettierd typescript-language-server typescript
```

R packages

```r
install.packages(c("languageserver", "lintr"))
remotes::install_github("gadenbuie/grkstyle")
```

Mason

```
:MasonInstallAll
```

TS

```
:TSInstall html cssls gopls tsserver r_language_server
```

nerdfont
