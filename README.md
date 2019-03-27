# Introduction à ggplot2

This repository contains the slides and the material for the Café des Doctorants.    
It is a quite thorough introduction to 📦 [`ggplot2`](https://cran.r-project.org/package=ggplot2), with some advanced concepts.

⚠ Written in French! ⚠

[Browse the slides](https://lgaborini.github.io/ggplot2-introduction/)!    
[Download the slides in PDF](https://lgaborini.github.io/ggplot2-introduction/index.pdf)! (not always updated)

## Prerequisites

Slides built with 📦 [xaringan](https://github.com/yihui/xaringan), an R wrapper around [remark.js](http://remarkjs.com/).   
Just clone the repository and open the html!

To build the presentation, one needs the 📦 [`tidyverse`](https://cran.r-project.org/package=tidyverse) package and some required packages to build the individual slides:

- 📦 [`nycflights13`](https://cran.r-project.org/package=nycflights13)
- 📦 [`DT`](https://cran.r-project.org/package=DT)
- 📦 [`maps`](https://cran.r-project.org/package=maps)
- 📦 [`sf`](https://cran.r-project.org/package=maps)
- 📦 [`plotly`](https://cran.r-project.org/package=plotly)
- 📦 [`htmltools`](https://cran.r-project.org/package=htmltools)
- 📦 [`gganimate`](https://cran.r-project.org/package=gganimate)

The HTML slides are built by knitting the file [index.Rmd](docs/index.Rmd) in the docs subdirectory.

To build the PDF slides, one needs the package 📦 [`pagedown`](https://cran.r-project.org/package=pagedown) with Chrome installed.

A small makefile is supplied.

## Technology

The presentation was made as a weekend project, using R Markdown and the package 📦 [xaringan](https://github.com/yihui/xaringan).

It contains several customizations, tricks and hacks: 

- basic `knitr` stuff:   
  usage of child chunks to avoid recompiling everything, with `eval=FALSE` as chunk options.

- the "advanced" CSS ribbon on difficult slides: [`docs/assets/css/ribbon-advanced.css`](docs/assets/css/ribbon-advanced.css)   
  It is always present (layout slide), but shown only if a slide has CSS class `slide-class-advanced`.

- the half-opaque overlay with CSS id `#overlay`, to shield the content behind a popup.     
  It is always present (layout slide) but hidden. Currently not used!

- Code wrapping in code chunks: [`docs/assets/css/custom.css`](docs/assets/css/custom.css).    
  CSS class `.left-code`. Has some issues with spaces, but it works more or less.

- the `remarkjs` macro to link to CRAN: [`docs/assets/js/macros.js`](docs/assets/js/macros.js)    
  Usage: write somewhere `![:package_cran xaringan]` to make a pretty link with emoji.

- some CSS popups: [`docs/assets/css/custom.css`](docs/assets/css/custom.css)    
  Usage: Make a `div` with class `heavy-box`

- Embedding `plotly` into `xaringan` using the 📦 [`htmltools`](https://github.com/yihui/xaringan/issues/159) hack.    
  Save the `plotly` object to `html` file, then manually embed it in iframe.

- Embedding a previously-made `gganimate` animation by saving to `docs/assets/img` directory (offline).

- Gradient background on CSS class `slide-class-advanced` slides: [`docs/assets/css/custom.css`](docs/assets/css/custom.css).

(To CSS pros: I'm sorry!)
