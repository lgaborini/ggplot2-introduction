# Introduction à ggplot2

This repository contains the slides and the material for the Café des Doctorants.

⚠ Written in French! ⚠

## Prerequisites

Slides built with [xaringan](https://github.com/yihui/xaringan), an R wrapper around `reveal.js`.   
Just clone and open the html!

To build the presentation, one needs the `tidyverse` package and some required packages to build the individual slides:

- `nycflights13`
- `maps`
- `plotly`
- `gganimate`
- `ggraph`
- `tidygraph`

## Technology

The presentation was made using R Markdown and the package [xaringan](https://github.com/yihui/xaringan).

It contains several customizations, tricks and hacks: 

- basic `knitr` stuff: use child chunks to avoid recompiling everything, with `eval=FALSE` as chunk options
- the "advanced" CSS ribbon on difficult slides: `assets/css/ribbon-advanced.css`   
  It is always present (layout slide), but shown only if a slide is of class `slide-class-advanced`
- the macro to link to CRAN: `assets/js/macros.js`
  Usage: write somewhere `![:package_cran xaringan]` to make a pretty link with emoji.
- some CSS popups: `assets/css/custom.css`
  Make a `div` with class `heavy-box`
- Embedding `plotly` into `xaringan` using the [`htmltools`](https://github.com/yihui/xaringan/issues/159) hack.
- Embedding a previously-made `gganimate` animation by saving