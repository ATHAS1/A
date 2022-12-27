#!/bin/bash

OD=/home/arturo/proyectoAF/app2/script/output

echo -e "\e[1m\e[36m>>\e[39m getting gridbox...\033[0m"
awk -f box.awk $OD/receptor.pdb | tee $OD/box.txt

echo num_modes=5 >> $OD/box.txt
