find . \
\( \
-name *.aux \
-o -name *.bbb-n \
-o -name *.bbl \
-o -name *.bcf \
-o -name *.log \
-o -name *.run.xml \
-o -name *.synctex.gz \
-o -name *.project.vim \
-o -name *.out \
-o -name *.tex-n \
-o -name *.toc \
-o -name *.pdf \
\) \
-print0 | xargs -0 rm

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
