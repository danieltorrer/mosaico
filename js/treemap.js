var color = [
"#756C57",    "#5E503C",    "#887F6E",    "#4F5884",    "#A6BFDF",    "#CCDEE8", "#FFF685",    "#88AD3F",    "#7FBF8B",    "#39B54A",    "#E86D24",
"#EA8E23",	  "#EEA320",    "#F2BC1A",    "#ED1C24",    "#9F1D20",    "#BE1E2D", "#D14C55",    "#662D91",    "#92278F",	   "#A154A1",    "#58595B",    
"#808285",    "#FFF200",    "#FFDE17"]

var tamañodelagrafica = 1240
var tamañoventana = document.documentElement.clientWidth

var margin = {
	top: 40, 
	right: 10, 
	bottom: 10, 
	left: 10
},
width = 1000
height = 450

//colores
$(document).ready(function(){
	

	var colores = d3.scale.category20();
	
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
	//.style("width", (width + margin.left + margin.right) + "px")
	//.style("height", (height + margin.top + margin.bottom) + "px")
	//.style("left", margin.left + "px")
	//.style("top", margin.top + "px");

	//
	//d3.json("flare.json", function(error, root) {
	d3.json("class/prioridad.php", function(error, root) {
		//console.log(root)
		
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
		/*d3.select(this).enter().append("text")
		.text(function(d) {
			return d.x;
		})
		.attr("x", function(d) {
			return x(d.x);
		})
		.attr("y", function (d) {
			return y(d.y);
		});*/
		})
		.text(function(d) {
			return d.children ? null : d.name
		//return d.children ? null : d.name +": " + d.size;
		})
	
		//node.append("title")
		//.text(function(d) { return d.name + (d.children ? "" : ": " + d.size); });

		
	  
		d3.selectAll("input").on("change", function change() {
			var value = this.value === "count"
			? function() {
				return 1;
			}
			: function(d) {
				return d.size;
			};

			node
			.data(treemap.value(value).nodes)
			.transition()
			.duration(1500)
			.call(position);
		});
	});

})

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