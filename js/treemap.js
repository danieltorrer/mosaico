var color = [
"#756C57",    "#5E503C",    "#887F6E",    "#4F5884",    "#A6BFDF",    "#CCDEE8", "#FFF685",    "#88AD3F",    "#7FBF8B",    "#39B54A",    "#E86D24",
"#EA8E23",	  "#EEA320",    "#F2BC1A",    "#ED1C24",    "#9F1D20",    "#BE1E2D", "#D14C55",    "#662D91",    "#92278F",	   "#A154A1",    "#58595B",    
"#808285",    "#FFF200",    "#FFDE17"]

var tamañodelagrafica = 1240
var width = 1100
var height = 420
var colores = d3.scale.category20();
//colores
$(document).ready(function(){
	$.ajax({
		type: "POST",
		url: "class/graph.php",
		data: {
			"tipo"	:	0,
			"edad"	:	0,
			"sexo"	:	0
		},
		dataType: "json",
		success: buildgraph,
		error: showerror
	})
	
	$("input:radio, #edadselect, #sexoselect").change(function(){
		$("#contenedor-arbol").html('<br><br><h2>Cargando datos</h2><img src="img/load.gif">')
		var tipo = $('input[name=mode]:checked').val()
		var edad = $("#edadselect").val()
		var sexo = $("#sexoselect").val()
		
		$.ajax({
			type: "POST",
			url: "class/graph.php",
			data: {
				"tipo" : tipo,
				"edad" : edad,
				"sexo" : sexo
			},
			dataType: "json",
			success: buildgraph,
			error: showerror
		})
		//$("#resultado").html("Query: Tipo" + tipo + " Edad: " + edad + " Sexo:"+sexo)
	})

})

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

function buildgraph(root){
	//console.log(root)
	$("#contenedor-arbol").html("");	
	var div = d3.select("#contenedor-arbol").append("div")
	.style("position", "relative")
	.attr("class","treemap")
	.style("width", (width) + "px")
	.style("height", (height) + "px")
		
	var treemap = d3.layout.treemap()
	.size([width, height])
	.sticky(false)
	.value(function(d) {
		return d.size;
	});
		
	var node = div.datum(root).selectAll(".node")
	.data(treemap.nodes)
	.enter().append("div")
	.attr("class", "node")
	.attr("title", function(d) {
		return d.children ? null : d.name +": " + d.size;
	})
	.call(position)
	.style("background", function(d) {
		return d.children ? colores(d.name) : null;
	})
	.on("mouseover", function() {
		$(this).tooltip('show')
	})
	.html(function(d) {
		return d.children ? null : "<p>" + d.name + "</p>"
	})
}

function showerror(error){
	console.log(error.toString())
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