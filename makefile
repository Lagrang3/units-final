VPATH:=slides:images
TARGETS:=slides.pdf
IMAGES:=forcetest/dist-relation.png \
	forcetest/gadget-gev-pm-diff-z8-64.pdf forcetest/gadget-gev-pm-diff-z0-64.pdf \
	gad-gev-first-power/pw-008.pdf gad-gev-latest-power/pw-008.pdf gad-gev-gr-power/pw-008.pdf \
	pw-phi-plus.pdf	pw-phi.pdf pw-chi.pdf pw-Bi.pdf \
	test-gr-cut/high-res-006.pdf resolution.pdf \
	appendix/gr-vs-newton.pdf appendix/strong-scale-Total.pdf appendix/weak-scale-Total.pdf \
	cubic-grid.jpeg planck2018.png planck2015.png Lensing3D.jpg alam-rsd.png desi.png \
	lsst.png magneticum.png
PLOTS:=
TEXS:=
slides_dep:=slides.tex
LATEXEC:=rubber --pdf slides.tex

export

default: $(TARGETS)

slides.pdf : $(slides_dep) $(IMAGES)
	-$(LATEXEC)

clean:
	-$(LATEXEC) --clean

.PHONY: clean default
