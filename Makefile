all: index.qmd
	Rscript -e 'quarto::quarto_render(output_format="html", profile="website"); browseURL("docs/index.html")'
