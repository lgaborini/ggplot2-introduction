# Introduction à ggplot2

This repository contains the slides and the material for the Café des Doctorants.    
It is a throrough introduction to ggplot2, with some advanced concepts.

⚠ Written in French! ⚠

[Browse the slides](https://lgaborini.github.io/ggplot2-introduction/)!

## Prerequisites

Slides built with [xaringan](https://github.com/yihui/xaringan), an R wrapper around `reveal.js`.   
Just clone and open the html!

To build the presentation, one needs the 📦 [`tidyverse`](https://cran.r-project.org/package=tidyverse) package and some required packages to build the individual slides:

- 📦 [`nycflights13`](https://cran.r-project.org/package=nycflights13)
- 📦 [`maps`](https://cran.r-project.org/package=maps)
- 📦 [`plotly`](https://cran.r-project.org/package=plotly)
- 📦 [`gganimate`](https://cran.r-project.org/package=gganimate)
- 📦 [`ggraph`](https://cran.r-project.org/package=ggraph)
- 📦 [`tidygraph`](https://cran.r-project.org/package=tidygraph)

## Technology

The presentation was made in a weekend using R Markdown and the package 📦 [xaringan](https://github.com/yihui/xaringan).

It contains several customizations, tricks and hacks: 

- basic `knitr` stuff:   
  usage of child chunks to avoid recompiling everything, with `eval=FALSE` as chunk options.

- the "advanced" CSS ribbon on difficult slides: `assets/css/ribbon-advanced.css`   
  It is always present (layout slide), but shown only if a slide has CSS class `slide-class-advanced`.

- the half-opaque overlay with CSS id "#overlay", to shield the content behind a popup.     
  It is always present (layout slide) but hidden. Currently not used!

- Code wrapping in code chunks: `assets/css/custom.css` 
  CSS class `.left-code`. Has some issues with spaces, but it works more or less.

- the `remarkjs` macro to link to CRAN: `assets/js/macros.js`    
  Usage: write somewhere `![:package_cran xaringan]` to make a pretty link with emoji.

- some CSS popups: `assets/css/custom.css`    
  Usage: Make a `div` with class `heavy-box`

- Embedding `plotly` into `xaringan` using the 📦 [`htmltools`](https://github.com/yihui/xaringan/issues/159) hack.    
  Save the `plotly` object to `html` file, then manually embed it in iframe.

- Embedding a previously-made `gganimate` animation by saving to `assets/img` directory (offline).

- Gradient background on CSS class `slide-class-advanced` slides.
