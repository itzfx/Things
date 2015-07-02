# Make pdfs of all *.tex files, then delete the extra, annoying, stuff.
# Works in Ubuntu as long as the correct packages are installed.
# Probably simple enough to just install `texmaker`.
for f in *.tex; do pdflatex "$f"; done
rm *.log
rm *.aux
rm *.out
