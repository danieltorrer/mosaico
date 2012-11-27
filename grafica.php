<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Mosaico Tijuana</title>

		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="font/stylesheet.css">
		<link rel="stylesheet" href="css/grafica.css">
		<script src="js/vendor/modernizr-2.6.1.min.js"></script>
		
	</head>
	<body>
		<div id="descripcion" class="container">
			<div class="row">
				<div class="offset1 span10">
					<h2>Infografía</h2>
					<p>
						Para la realización del proyecto Mosaico Tijuana, con el objetivo de propiciar la participación ciudadana, Yo Propongo realizó un levantamiento de encuestas desde el 2 al 14 de octubre de 2012 donde se le preguntó a 7616 tijuanenses: ¿Cómo es la Tijuana de tus sueños y tú que harías o tú que propones para llegar a ese ideal?
						A partir de todas las respuestas recolectadas se analizaron los resultados y arrojaron la siguiente infografía.
					</p>
				</div>
			</div>
		</div>
		<div id="contenedor-arbol">
			<br><br>
			<h2>Cargando datos</h2>
			<img src="img/load.gif">
		</div>
		<div id="controles" class="container">
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

			</div>
		</div>

		<footer>
			<div class="container">
				<div class="row">
					<div class="span12">
						<h4><a href="index.php">Regresar<a></h4>
					</div>
				</div>
			</div>
		</footer>
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