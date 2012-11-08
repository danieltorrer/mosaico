$(document).ready(function(){
	$("#title").click(function(){
		$("#modalmedia .modal-header h3").html("Mosaico Tijuana")
		$("#modalmedia .modal-body").html("<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>")
		$("#modalmedia").modal().css({
			'width': function() {
				return ($(document).width() *	.8) + 'px';  
			},
			'margin-left': function () { 
				return -($(this).width() / 2); 
			}
		});
	})
	
	$("#btn-izq").click(function(){
		$("#modalmedia .modal-header h3").html("Fotos")
		
		$("#modalmedia .modal-body").html('<div id="myCarousel" class="carousel slide">'+
			'<div class="carousel-inner">'+
			'<div class="item active">'+
			
			'<img src="img/foto/1.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Blanca Dávalos</h4>'+
			'<p>Aguascalientes. Foto: Itzel Martínez</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/2.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Ramón Amezcua</h4>'+
			'<p>Baja California. Foto: Luis García</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/3.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Roberto Blanco</h4>'+
			'<p>Baja California Sur. Foto: Angélica Escoto</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/4.jpg"/>'+
			'<div class="carousel-caption">'+
			'<h4>Mario Pavón</h4>'+
			'<p>Campeche. Foto: Itzel Martínez</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/5.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Nina Moreno</h4>'+
			'<p>Chiapas. Foto: Carmela Castrejón</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/6.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Paola Valencia</h4>'+
			'<p>Chihuahua. Foto: Itzel Martínez</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/29.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Juanita Ortiz</h4>'+
			'<p>Coahuila. Foto: Juanita Ortiz</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/7.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Max Mejia</h4>'+
			'<p>Colima. Foto: Jofras</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/8.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Anita Hernandez</h4>'+
			'<p>DF. Foto: Julio Orozco</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/9.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Rosa María Martínez</h4>'+
			'<p>Durango. Foto: Itzel Martínez</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/11.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Rocío Gallardo</h4>'+
			'<p>Guanajuato. Foto: Rocío Gallardo</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/12.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Bertha Vivar</h4>'+
			'<p>Guerrero. Foto: Carmela Castrejón</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/13.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Alberto Licona</h4>'+
			'<p>Hidalgo. Foto: Roberto Córdova-Leyva</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/14.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Teresa Riqué</h4>'+
			'<p>Jalisco. Foto: David Maung</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/10.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Olga Micaela de Sampedro</h4>'+
			'<p>Estado de Mexico. Foto: Angélica Escoto</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/15.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Jose Luis Ortiz</h4>'+
			'<p>Michoacán. Foto: Julio Orozco</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/16.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Jorge Bautista</h4>'+
			'<p>Morelos. Foto: Carmela Castrejón</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/17.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Kevin y Ana Rosa Maldonado</h4>'+
			'<p>Nayarit. Foto: Jofras</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/18.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Daniel Salinas</h4>'+
			'<p>Nuevo León. Foto: Julio Orozco</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/19.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Nahum Hernandez</h4>'+
			'<p>Oaxaca. Foto: David Maung</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/20.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Elias y Benjamin Sanchez</h4>'+
			'<p>Puebla. Foto: Angélica Escoto</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/22.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Said Rodriguez</h4>'+
			'<p>Querétaro. Foto: Said Rodriguez</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/21.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Camen Padilla</h4>'+
			'<p>Quintana Roo. Foto: Carmela Castrejón</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/24.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Wendy Melissa Lugo</h4>'+
			'<p>San Luis Potosí. Foto: David Maung</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/23.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4> Raul Cardenas</h4>'+
			'<p>Sinaloa. Foto: Jofras</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/25.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Gabriela Posada</h4>'+
			'<p>Sonora. Foto: Julio Orozco</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/26.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Roberto Rosique</h4>'+
			'<p>Tabasco. Foto: Luis García</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/27.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Mely Gonzalez</h4>'+
			'<p>Tamaulipas. Foto: David Maung</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/28.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Romulo Sosa</h4>'+
			'<p>Tlaxcala. Foto: Jofras</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/30.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Maria Teresa Quijano</h4>'+
			'<p>Yucatán. Foto: Roberto Córdova-Leyva</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/31.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Carlos Adolfo Rosario</h4>'+
			'<p>Veracruz. Foto: Roberto Córdova-Leyva</p>'+
			'</div>'+
			'</div>'+
			
			'<div class="item">'+
			'<img src="img/foto/32.jpg" title=""/>'+
			'<div class="carousel-caption">'+
			'<h4>Adelaida del Real</h4>'+
			'<p>Zacatecas. Foto: Jofras</p>'+
			'</div>'+
			'</div>'+
			
			
			'</div>'+
			'<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>'+
			'<a id="derecha" class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>'+
			'</div>')
		
		$("#modalmedia").modal().css({
			'width': function() {
				return ($(document).width() *	.8) + 'px';  
			},
			'margin-left': function () { 
				return -($(this).width() / 2); 
			}
		});
	})
	
	$("#btn-der").click(function(){
		$("#modalmedia .modal-header h3").html("Video")
		$("#modalmedia .modal-body").html('<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/uIWZtU1GqtM" frameborder="0" allowfullscreen></iframe>')
		
		$("#modalmedia").modal().css({
			'width': function() {
				return ($(document).width() *.5) + 'px';  
			},
			'margin-left': function () { 
				return -($(this).width() / 2); 
			}
		});
	})
	
	$("#modalmedia").on("hidden",function(){
		$("#modalmedia .modal-header h3").html("")
		$("#modalmedia .modal-body").html("")
	})
})