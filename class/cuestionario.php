<?php

include "class.php";
$dato = new queries();
$resultado = $dato->insertData($_POST["datos"]);

json_encode($resultado);

?>
