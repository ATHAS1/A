#!/bin/bash

WD=/home/arturo/proyectoAF/app2/script
OD=/home/arturo/proyectoAF/app2/script/output
VINADIR=/home/arturo/.local/src/autodock_vina_1_1_2_linux_x86/bin
i=1

awk -f $WD/box.awk $OD/coarse.pdbqt

echo -e "\e[1m\e[36m>>\e[39m docking...\033[0m"
#[ -f "$file" ] || echo "error: $file is not a file!" && exit
cd $VINADIR
./vina --receptor $OD/receptor.pdbqt --ligand $OD/ligand.pdbqt\
	   --config $OD/box.txt --exhaustiveness=16 --out $OD/docking.pdbqt \
	   | tee $OD/scores.txt

#rm ligand.mol2 ligand.pdbqt receptor.pdb receptorH.pdb box.txt receptor.pdbqt
