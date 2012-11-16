<?php

class Conectar {

	public static function con() {

		//$conexion = mysql_connect("mysql51-014.wc1.ord1.stabletransit.com", "709717_daniel", "cabasgym") or
		$conexion = mysql_connect("localhost", "root", "") or
				die("Error de conexion: " . mysql_error());  // hacemos conexion al serv
		//mysql_select_db("709717_mosaico") or
		mysql_select_db("mosaico") or
				die("Error de conexion: " . mysql_error()); //
		mysql_query("SET CHARACTER SET utf-8");

		return $conexion;
	}

}

class queries {

	public function get_user_data($id_user) {
		if (is_numeric($id_user)) {
			$sql = "SELECT * FROM `registros` WHERE `id` = $id_user";

			$res = mysql_query($sql, Conectar::con());
			$data = array();
			while ($reg = mysql_fetch_assoc($res)) {
				$data[] = array_map("utf8_encode", $reg);
			}
			return $data;
		}

		else
			return null;
	}

	public function insertData($nombre, $sexo, $edad, $mail, $cp, $estado, $hoy, $futuro, $prioridad, $accion) {
		$sql = "Insert into registros values (null ,'" . $nombre . "','" . $sexo . "','" . $edad . "','" . $mail . "','" . $cp . "','" . $estado . "',null,null,null,null,null,null,'si','" . $hoy . "','" . $futuro . "','" . $prioridad . "','" . $accion . "')";
		echo $sql;
		$result = array();

		if (!mysql_query($sql, Conectar::con())) {
			$result["response"] = null;
		} else {
			$result["response"] = true;
		}

		return $result;
	}

	public function getPrioridades() {
		//$sql = "SELECT 'Prioridad' , count('Prioridad') FROM encuesta GROUP by 'Prioridad'";
		$sql = "SELECT `Prioridad` AS name, count( `Prioridad` ) AS size FROM encuesta GROUP BY `Prioridad`";

		$res = mysql_query($sql, Conectar::con());
		$data = array();

		//$data["name"] = "Prioridad";
		$cont = 0;
		
		while ($reg = mysql_fetch_assoc($res)) {
			//echo utf8_encode($reg["Prioridad"]);
			$arreglo = array();
			$arreglo["name"] = "tipo" . $cont;
			$arreglo["children"][] = array_map("utf8_encode", $reg);
			
			$data[] = $arreglo;
			$arreglo = null;
			$cont++;
		}
		return $data;
	}

}

?>