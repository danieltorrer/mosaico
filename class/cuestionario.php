<?php

include "class.php";
$dato = new queries();
$resultado = $dato->insertData($_POST["nombre"], $_POST["sexo"], $_POST["edad"], $_POST["mail"], $_POST["cp"], $_POST["estado"], $_POST["hoy"], $_POST["futuro"], $_POST["prioridad"], $_POST["accion"]);
json_encode($resultado);
?>
