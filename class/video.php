<?php

include 'class.php';

$dato = new queries();
$resultado = $dato->get_user_data($_POST["id"]);

echo json_encode($resultado);
?>