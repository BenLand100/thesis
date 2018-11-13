file := thesis
dir := ./textemp

all: direct
	pdflatex -output-directory $(dir) $(file)
	cp *.bib $(dir)
	cd $(dir); biber $(file); cd ../;
	pdflatex -output-directory $(dir) $(file)
	pdflatex -output-directory $(dir) $(file)
	mv $(dir)/$(file).pdf $(file).pdf

direct:
	mkdir -p $(dir)

clean:
	rm -rf $(dir) $(file).pdf
