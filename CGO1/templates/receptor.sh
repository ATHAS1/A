WD=~/proyectoAF/EN2/app2/CGO1/templates
ID=~/proyectoAF/EN2/app2/CGO1/templates/input
OD=~/proyectoAF/EN2/app2/CGO1/templates/output
ADFRDIR=~/.local/src/adfr/ADFRsuite-1.0/bin
CHIMERA=~/.local/src/chimera/bin

echo -e "\e[1m\e[36m>>\e[39m cleaning receptor...\033[0m"
cd $CHIMERA; ./chimera --nogui $WD/receptor.py
cd $ADFRDIR
echo -e "\e[1m\e[36m>>\e[39m preparing receptor...\033[0m"
./reduce $OD/receptor.pdb >> $OD/receptorH.pdb
./prepare_receptor -r $OD/receptorH.pdb -o $OD/receptor.pdbqt
