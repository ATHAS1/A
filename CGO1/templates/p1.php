<?php
$command = "./blind.sh";
$info = exec ($command,$output,$result);
if(!$result){
    echo "Se corriò correctamente";
} else {
    echo "Error de sistema";
}
echo $info;
