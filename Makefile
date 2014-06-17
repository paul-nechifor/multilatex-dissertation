all:
	pdflatex lucrare.tex

listen:
	while inotifywait -e close_write lucrare.tex; do sleep 1; make; done

clean:
	rm -f *.log *.aux *.pdf *.toc *~

.PHONY: listen clean
