var color = [
"#756C57",    "#5E503C",    "#887F6E",    "#4F5884",    "#A6BFDF",    "#CCDEE8", "#FFF685",    "#88AD3F",    "#7FBF8B",    "#39B54A",    "#E86D24",
"#EA8E23",	  "#EEA320",    "#F2BC1A",    "#ED1C24",    "#9F1D20",    "#BE1E2D", "#D14C55",    "#662D91",    "#92278F",	   "#A154A1",    "#58595B",    
"#808285",    "#FFF200",    "#FFDE17"]

var tamañodelagrafica = 1240
var width = 1000
var height = 450
var colores = d3.scale.category20();
//colores
$(document).ready(function(){
	
	
	d3.json("class/prioridad.php", function(error, root) {
		
		var node = div.datum(root).selectAll(".node")
		
		.data(treemap.nodes)
	
		.enter().append("div")
	
		.attr("class", "node")
	
		.attr("title", function(d) {
			return d.children ? null : d.name +": " + d.size;
		})
	
		.call(position)
	
		//.style("background", function(d) {return d.children ? color[Math.floor(Math.random()*100)%25] : null})
	
		.style("background", function(d) {
			return d.children ? colores(d.name) : null;
		})
	
		.on("mouseover", function() {
			$(this).tooltip('show')

		})
		.html(function(d) {
			//var a =  
			return d.children ? null : "<p>" + d.name + "</p>"
		})
	})
	//general shit
	var treemap = d3.layout.treemap()
	.size([width, height])
	.sticky(false)
	.value(function(d) {
		return d.size;
	});


	//posiciona el div
	var div = d3.select("#contenedor-arbol").append("div")
	.style("position", "relative")
	.attr("class","treemap")
	.style("width", (width) + "px")
	.style("height", (height) + "px")


	//
	$("input:radio, #edadselect, #sexoselect").change(function(){
		var tipo = $('input[name=mode]:checked').val()
		var edad = $("#edadselect").val()
		var sexo = $("#sexoselect").val()
		$("#resultado").html("Query: Tipo" + tipo + " Edad: " + edad + " Sexo:"+sexo)
		
		//lol
		//var opcion = $("#tipo input[type='radio']:checked").val();
		//var tipo = (opcion === "prioridades")? makeprioridad() : makeSueños()	
	})
	
});

function makeprioridad(){
	d3.json("class/prioridad.php", function(error, root) {
		
		})
}

function makeSueños(){
	$.ajax({
		type: "POST",
		url: "class/suenos.php",
		dataType: "json",
		success: buildsueño,
		error: showerror
	});
}

function buildsueño(datos){
	
}

function showerror(){
		
}

function position() {
	this.style("left", function(d) {
		return d.x + "px";
	})
	.style("top", function(d) {
		return d.y + "px";
	})
	.style("width", function(d) {
		return Math.max(0, d.dx - 1) + "px";
	})
	.style("height", function(d) {
		return Math.max(0, d.dy - 1) + "px";
	});
}