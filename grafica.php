<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
		<link rel="stylesheet" href="css/bootstrap.css">
		<style>
			.node {
				border: solid 1px white;
				font: 15px sans-serif;
				line-height: 12px;
				overflow: hidden;
				position: absolute;
				text-indent: 2px;
				color: white;
			}

			.treemap{
				margin: 0 auto!important;
			}

			#contenedor-arbol{
				margin: 0 auto;
				text-align: center;
				padding: 40px;
			}

		</style>
	</head>
	<body>
		<div id="contenedor-arbol">
		</div>
		<div class="container">
			<div class="row">
				<div class="span8 offset2">
					<form>
						<label><input type="radio" name="mode" value="size" checked> Size</label>
						<label><input type="radio" name="mode" value="count"> Count</label>
					</form>
				</div>
			</div>
		</div>


		<script src="js/vendor/jquery-1.8.0.min.js"></script>
		<script src="http://d3js.org/d3.v3.min.js"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/treemap.js"></script>
		<script>
			$(document).ready(function(){
				$('.node').tooltip()
			})
		</script>
	</body>
</html>