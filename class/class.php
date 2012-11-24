<?php

class Conectar {

	public static function con() {

		$conexion = mysql_connect("mysql51-014.wc1.ord1.stabletransit.com", "709717_daniel", "cabasgym") or
		//$conexion = mysql_connect("localhost", "root", "") or
				die("Error de conexion: " . mysql_error());  // hacemos conexion al serv
		mysql_select_db("709717_mosaico") or
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

	public function getPrioridades($tipo, $edad, $sexo) {
		//$sql = "SELECT 'Prioridad' , count('Prioridad') FROM encuesta GROUP by 'Prioridad'";
		if ($tipo == 0) {
			$columna = 'Prioridad';
		} else {
			if ($tipo == 1) {
				$columna = 'Tijuana_suenos';
			}
		}

		if ($sexo == '0') {
			$sex = "";
		} elseif ($sexo == "Masculino") {
			$sex = "WHERE Sexo = 'Masculino'";
		} elseif ($sexo == "Femenino") {
			$sex = "WHERE Sexo = 'Femenino'";
		}

		if ($sex == "")
			$temp = "where";
		else
			$temp = "and";

		if ($edad == '0') {
			$age = "";
		} elseif ($edad == "1") {
			$age = $temp . " `Edad` >= 5 and `Edad` <= 14";
		} elseif ($edad == "2") {
			$age = $temp . " `Edad` >= 15 and `Edad` <= 29";
		} elseif ($edad == "3") {
			$age = $temp . " `Edad` >= 30 and `Edad` <= 59";
		} elseif ($edad == "4") {
			$age = $temp . " `Edad` >= 60 and `Edad` <= 120";
		}

		$sql = "SELECT $columna AS name, count( $columna ) AS size FROM encuesta " . $sex . $age . " GROUP BY $columna";

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