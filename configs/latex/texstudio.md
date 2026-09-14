### LaTeX Settings

Switch on "Show Advanced Options" in `Options -> Configure TeXStudio`

**XeLaTeX Build command:**

```sh
xelatex -synctex=1 -interaction=nonstopmode -shell-escape -8bit -output-directory=build %.tex
```

**`Build -> Build Options` Settings:**

Log:

```
build
```

PDF File:

```
build
```

### Minted

Install Pygments:

```sh
pip install Pygments
```