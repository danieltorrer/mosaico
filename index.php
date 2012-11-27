<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Mosaico Tijuana</title>

        <meta name="description" content="mosaico, tijuana">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="font/stylesheet.css">
		<link rel="stylesheet" href="css/style.css">

		<script src="js/vendor/modernizr-2.6.1.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->
        <!-- Add your site or application content here -->


		<header>
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div id="logo"></div>
                    </div>
                </div>
            </div>
        </header>

        <div id="triangulo"><a href="grafica.php"></a></div>
		<div id="proyecto"><a href="proyecto.html"></a></div>
        <div id="participa"></div>
        <div id="lienzo"></div>

		<p class="mensaje">Activa javascript para poder visualizar el sitio</p>

        <div class="modal hide fade" id="videomodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="false">×</button>
                <h3 id="myModalLabel1"></h3>
            </div>

			<div class="modal-body">
				<div class="row">
					<div class="span4" id="strip">
						<p id="nombrep"></p>
						<p id="edadp"></p>
						<p id="sexop"></p>
						<p id="coloniap"></p>
					</div>
					<div id="video" class="span6">
						
					</div>
				</div>
			</div>

			<div class="modal-footer">
            </div>
        </div>

        <div id="participamodal" class="modal" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="myModalLabel1" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel1">¡Participa en el Mosaico Tijuana!</h3>
            </div>
            <div class="modal-body">
			</div>
			<div class="modal-footer">
				<a id="siguiente" class="btn btn-primary">Siguiente</a>
			</div>
		</div>

		<footer>
			<ul class="unstyled">
				<li><a href="agradecimientos.html">Agradecimientos</a></li>
			</ul>
		</footer>
		
		<script src="js/vendor/raphael-min.js"></script>
		<script src="js/vendor/raphaelcustom.js"></script>
		<script src="js/vendor/jquery-1.8.0.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
