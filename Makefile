.PHONY: all clean buildclean

CC = lualatex
OUTPUT_DIR = results

vpath %.pdf $(OUTPUT_DIR)

all: hemanthg-resume.pdf hemanthg-cv.pdf hemanthg-coverletter.pdf

hemanthg-resume.pdf: hemanthg-resume.tex

hemanthg-cv.pdf: hemanthg-cv.tex

hemanthg-coverletter.pdf: hemanthg-coverletter.tex

%.pdf: %.tex
	$(CC) -output-directory=$(OUTPUT_DIR) $<

.ONESHELL:
buildclean:
	rm -f $(OUTPUT_DIR)/*.log
	rm -f $(OUTPUT_DIR)/*.out
	rm -f $(OUTPUT_DIR)/*.aux

.ONESHELL:
clean:
	rm -f $(OUTPUT_DIR)/*
	rm -f *.log
	rm -f *.out
	rm -f *.aux
