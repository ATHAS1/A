#!/bin/bash

OD=/home/arturo/proyectoAF/app2/script/output
PRANK=/home/arturo/.local/src/p2rank_2.4

echo -e "\e[1m\e[36m>>\e[39m looking for pockets...\033[0m"
$PRANK/prank predict -c configs/blind.groovy -f $OD/receptor.pdbqt -o $OD
