

docs/index.html: docs/index.Rmd
	Rscript -e "rmarkdown::render('docs/index.Rmd', encoding='UTF-8')"

docs/index.pdf: docs/index.html
	Rscript -e "pagedown::chrome_print('docs/index.html', timeout=60)"

# Command line liases

html: docs/index.html

pdf: docs/index.pdf

slides: html

all: pdf