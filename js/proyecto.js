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
			'<img src="img/foto/01.jpg" title="Algo 1"/>'+
			'<div class="carousel-caption">'+
			'<h4>First Thumbnail label</h4>'+
			'<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>'+
			'</div>'+
			'</div>'+
			'<div class="item">'+
			'<img src="img/foto/01.jpg" title="Algo 1"/>'+
			'<div class="carousel-caption">'+
			'<h4>First Thumbnail label</h4>'+
			'<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>'+
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