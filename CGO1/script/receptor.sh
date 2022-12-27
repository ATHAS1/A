WD=/home/arturo/proyectoAF/app2/script
OD=/home/arturo/proyectoAF/app2/script/output
ADFRDIR=/home/arturo/.local/src/adfr/ADFRsuite-1.0/bin
CHIMDIR=/home/arturo/.local/src/chimera/bin

echo -e "\e[1m\e[36m>>\e[39m cleaning receptor...\033[0m"
cd $CHIMDIR; ./chimera --nogui $WD/receptor.py
cd $ADFRDIR
echo -e "\e[1m\e[36m>>\e[39m preparing receptor...\033[0m"
./reduce $OD/receptor.pdb >> $OD/receptorH.pdb
./prepare_receptor -r $OD/receptorH.pdb -o $OD/receptor.pdbqt

rm -f $WD/receptor.pyc
