# texlive-ja
 Minimal TeX Live image for Japanese based on alpine ( https://cloud.docker.com/repository/docker/shimastripe/texlive-ja )

texlive2018+synctex+texcounts+latexindent

for vscode-latex-workshop ( https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop )

## usage

```
$ docker pull shimastripe/texlive-ja
$ docker run --rm -it -v $PWD:/workdir shimastripe/texlive-ja latexmk
$ docker run --rm -it -v $PWD:/workdir shimastripe/texlive-ja latexindent
$ docker run --rm -it -v $PWD:/workdir shimastripe/texlive-ja synctex
etc)...
```