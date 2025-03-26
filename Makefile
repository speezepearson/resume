default: resume.pdf

resume.pdf: resume.cls *.tex
	docker run --rm -i --user="$$(id -u):$$(id -g)" --net=none -v "$$PWD":/data blang/latex:latest xelatex resume.tex

clean:
	rm -f resume.pdf *.aux *.out *.log
