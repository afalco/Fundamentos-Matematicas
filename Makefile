SHELL := /bin/sh

LATEX := lualatex
LATEXFLAGS := -interaction=nonstopmode -halt-on-error

TEXMFVAR ?= $(HOME)/.texlive2026/texmf-var
TEXMFCACHE ?= $(TEXMFVAR)

DOCS := Manual/manual_fundamentos_matematicas_esqueleto.tex \
        $(wildcard FMI/*.tex) \
        $(wildcard FMII/*.tex)

PDFS := $(DOCS:.tex=.pdf)

AUX_EXT := aux log out toc lot lof fls fdb_latexmk nav snm synctex.gz

.PHONY: all clean clean-pdfs rebuild list

all: $(PDFS)
	$(MAKE) clean

%.pdf: %.tex
	mkdir -p $(TEXMFVAR) $(TEXMFCACHE); \
	cd $(dir $<) && \
	  env TEXMFVAR=$(TEXMFVAR) TEXMFCACHE=$(TEXMFCACHE) $(LATEX) $(LATEXFLAGS) $(notdir $<) && \
	  env TEXMFVAR=$(TEXMFVAR) TEXMFCACHE=$(TEXMFCACHE) $(LATEX) $(LATEXFLAGS) $(notdir $<)

clean:
	@for ext in $(AUX_EXT); do \
	  find Manual FMI FMII -name "*.$$ext" -delete; \
	done

clean-pdfs:
	@find Manual FMI FMII -name "*.pdf" -delete

rebuild: clean-pdfs all

list:
	@printf '%s\n' $(DOCS)
