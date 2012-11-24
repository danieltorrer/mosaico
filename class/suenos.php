<?php

include "class.php";

$dato = new queries();

$query = $dato->getSuenos();	

$resultado = array();
$resultado["name"] = "suenos";
$resultado["children"] = $query;

echo json_encode($resultado);

?>