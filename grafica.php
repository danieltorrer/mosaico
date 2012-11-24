<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="font/stylesheet.css">
		<style>
			body{
				-webkit-user-select: none;
				-khtml-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none;
				user-select: none;
			}

			.node {
				border: solid 1px white;
				font: 15px sans-serif;
				line-height: 12px;
				overflow: hidden;
				position: absolute;
				text-indent: 2px;
				color: white;
			}

			.node p{
				padding-top: 20px;
			}

			.treemap{
				margin: 0 auto!important;
			}

			#contenedor-arbol{
				margin: 0 auto;
				text-align: center;
				padding: 60px;
				height: 420px;
			}

		</style>
	</head>
	<body>
		<div id="contenedor-arbol">
			<br><br>
			<h2>Cargando datos</h2>
			<img src="img/load.gif">
		</div>
		<div class="container">
			<div class="row">
				<div class="span8 offset2">
					<div class="span2">
						<label>Tipo</label>
						<label><input type="radio" name="mode" value="0" checked> Prioridades</label>
						<label><input type="radio" name="mode" value="1"> Tijuana de tus sueños</label>
					</div>

					<div class="span2">
						<label for="edad">Edad</label>
						<select id="edadselect" class="span2">
							<option value='0'>Todas las edades</option>
							<option value='1'>5 a 14 años</option>
							<option value='2'>15 a 29 años</option>
							<option value='3'>30 a 59 años</option>
							<option value='4'>60 en adelante</option>
						</select>
					</div>

					<div class="span2">
						<label for="edad">Sexo</label>
						<select id="sexoselect" class="span2">
							<option value="0">Ambos</option>
							<option value='Masculino'>Masculino</option>
							<option value='Femenino'>Femenino</option>
						</select>
					</div>
				</div>
				<p id="resultado"></p>
			</div>
		</div>


		<script src="js/vendor/jquery-1.8.0.min.js"></script>
		<script src="js/vendor/d3.v3.min.js"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/treemap.js"></script>
		<script>
			$(document).ready(function(){
				$('.node').tooltip()
			})
		</script>
	</body>
</html>