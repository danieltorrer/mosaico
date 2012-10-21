<?php

class Conectar {

	public static function con() {

		//$conexion = mysql_connect("mysql51-014.wc1.ord1.stabletransit.com", "709717_daniel", "cabasgym") or
		$conexion = mysql_connect("localhost", "root", "") or
				die("Error de conexion: " . mysql_error());  // hacemos conexion al serv
		//mysql_select_db("709717_mosaico") or
		mysql_select_db("mosaico") or
				die("Error de conexion: " . mysql_error()); //

		mysql_query("SET NAMES 'utf-8'");

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
				$data[] = $reg;
			}
			return $data;
		}
		
		else
			return null;
	}
	
	public function insertData($deita) {
		//$sql = "Insert into basededatos values (null,$nombre,$sexo,$edad,$CP,$estado,null,)";
		return "algo";
	}

}

?>