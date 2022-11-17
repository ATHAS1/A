#!/bin/bash

WD=~/proyectoAF/EN2/app2/CGO1/templates
ID=~/proyectoAF/EN2/app2/CGO1/templates/input
OD=~/proyectoAF/EN2/app2/CGO1/templates/output
ADFRDIR=~/.local/src/adfr/ADFRsuite-1.0/bin
VINADIR=~/.local/src/autodock_vina_1_1_2_linux_x86/bin
CHIMERA=~/.local/src/chimera/bin

./ligand.sh
./receptor.sh

echo -e "\e[1m\e[36m>>\e[39m getting gridbox...\033[0m"
awk -f box.awk $OD/receptorH.pdb | tee $OD/box.txt

echo -e "\e[1m\e[36m>>\e[39m docking...\033[0m"
cd $VINADIR
./vina --receptor $OD/receptor.pdbqt --ligand $OD/ligand.pdbqt\
	   --config $OD/box.txt --exhaustiveness=4 --out $OD/docking.pdbqt \
	   | tee $OD/scores.txt

cd $WD; ./redock.sh
rm -f receptor.pyc

#rm ligand.mol2 ligand.pdbqt receptor.pdb receptorH.pdb box.txt receptor.pdbqt
