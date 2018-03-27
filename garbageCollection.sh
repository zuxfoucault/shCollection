find . \
\( \
-name '*.aux' \
-o -name '*.bbb-n' \
-o -name '*.bbl' \
-o -name '*.bcf' \
-o -name '*.log' \
-o -name '*.run.xml' \
-o -name '*.synctex.gz' \
-o -name '*.project.vim' \
-o -name '*.out' \
-o -name '*.tex-n' \
-o -name '*.toc' \
-o -name '*.blg' \
-o -name '*.fdb_latexmk' \
-o -name '*.fls' \
-o -name '*.dvi' \
-o -name '*.nav' \
-o -name '*.snm' \
-o -name .DS_Store \
\) \
-print0 | xargs -0 rm

#20161225 20:42:11 Sunday CST
# add '*.aux' to escape the * so that find does the expansion internally
## work version but heavy resource taking
#find . \
#\( \
#-name *.aux \
#-o -name *.bbb-n \
#-o -name *.bbl \
#-o -name *.bcf \
#-o -name *.log \
#-o -name *.run.xml \
#-o -name *.synctex.gz \
#-o -name *.project.vim \
#-o -name *.out \
#-o -name *.tex-n \
#-o -name *.toc \
#\) \
#-exec rm -- {} \;
