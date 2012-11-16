<?php

include "class.php";

$dato = new queries();

$query = $dato->getPrioridades();

$resultado = array();
$resultado["name"] = "Prioridad";
$resultado["children"] = $query;

echo json_encode($resultado);
//echo json_encode(array("Resultado" => $res));

?>
