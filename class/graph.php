<?php

include "class.php";

$dato = new queries();

$query = $dato->getPrioridades($_POST["tipo"], $_POST["edad"], $_POST["sexo"]);
$resultado = array();
$resultado["name"] = "Prioridad";
$resultado["children"] = $query;

echo json_encode($resultado);
//echo json_encode(array("Resultado" => $res));
?>
