# Copyright (c) 2019 Go Takagi
# Copyright (c) 2019 shimastripe
# Released under the MIT license
# https://opensource.org/licenses/MIT

FROM paperist/alpine-texlive-ja

MAINTAINER shimastripe

# install latexindent synctex texcount chktex for vscode-latex-workshop(https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
# install Log4perl on which latexindent depends

RUN apk --no-cache add perl-dev perl-utils gcc musl-dev make curl && \
  cpan -i Log::Log4perl Log::Dispatch::File YAML::Tiny File::HomeDir && \
  tlmgr update --self && \
  tlmgr install latexindent synctex texcount chktex algorithmicx algorithms
