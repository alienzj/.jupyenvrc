## Reproducible Computing Environment with Jupyter and Nix Flake


### Installation

```bash
git clone git@github.com:alienzj/.jupyenvrc.git

cd .jupyenvrc
mkdir -p workspace
cd workspace
ln -s /path/to/projects
cd ..
```

### Run

```bash
nix develop
nix run
```
