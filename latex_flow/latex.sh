#!/bin/bash

touch "${1}.tex"
printf "\\documentclass{article}\n\n\\\title{My Latex File}\n\\\author{Krutartha Nagesh}\n\n\\\begin{document}\n\\\maketitle\n\\\end{document}">"${1}.tex"
pdflatex "${1}.tex"
open -a Skim "${1}.pdf"
open -a iTerm `pwd`
vim "${1}.tex"
