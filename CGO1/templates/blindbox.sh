#!/bin/bash

WD=~/proyectoAF/EN2/app2/CGO1/templates
ID=~/proyectoAF/EN2/app2/CGO1/templates/input
OD=~/proyectoAF/EN2/app2/CGO1/templates/output

echo -e "\e[1m\e[36m>>\e[39m getting gridbox...\033[0m"
awk -f box.awk $OD/receptorH.pdb | tee $OD/box.txt
