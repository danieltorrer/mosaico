<!DOCTYPE html>
<meta charset="utf-8">
<style>

	body {
		font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
		margin: 0 auto !important;
	}

	form {
		position: absolute;
		right: 10px;
		top: 10px;
	}

	.node {
		border: solid 1px white;
		font: 10px sans-serif;
		line-height: 12px;
		overflow: hidden;
		position: absolute;
		text-indent: 2px;
	}

</style>

<form>
	<label><input type="radio" name="mode" value="size" checked> Size</label>
	<label><input type="radio" name="mode" value="count"> Count</label>
</form>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script>

	var color = [
	"#483D2C",    "#756C57",    "#5E503C",    "#887F6E",    "#4F5884",    "#A6BFDF",    "#CCDEE8",    "#B6C7D1",
	"#FFF685",    "#FFF9AE",    "#88AD3F",    "#7FBF8B",    "#98C99F",    "#39B54A",    "#E86D24",    "#EA8E23",
	"#EEA320",    "#F2BC1A",    "#ED1C24",    "#9F1D20",    "#BE1E2D",    "#D14C55",    "#662D91",    "#92278F",
	"#A154A1",    "#C7A0CB",    "#414042",    "#58595B",    "#808285",    "#BCBEC0",    "#FFF200",    "#FFDE17"]
	var tamañodelagrafica = 1140

	var tamañoventana = document.documentElement.clientWidth

	var margen = Math.floor((tamañoventana-tamañodelagrafica)/2)

	var margin = {top: 40, right: 10, bottom: 10, left: 10},
    width = tamañodelagrafica- margin.left - margin.right,
    height = 600 - margin.top - margin.bottom;


	//colores
	//var color = d3.scale.category20c();
	
	//general shit
	var treemap = d3.layout.treemap()
    .size([width, height])
    .sticky(false)
    .value(function(d) { return d.size; });


	//posiciona el div
	var div = d3.select("body").append("div")
    .style("position", "relative")
    .style("width", (width + margin.left + margin.right) + "px")
    .style("height", (height + margin.top + margin.bottom) + "px")
    .style("left", margin.left + "px")
    .style("top", margin.top + "px");

	//
	//d3.json("flare.json", function(error, root) {
	d3.json("class/prioridad.php", function(error, root) {
		//console.log(root)
		
		var node = div.datum(root).selectAll(".node")
		.data(treemap.nodes)
		.enter().append("div")
		.attr("class", "node")
		.call(position)
		.style("background", function(d) { return d.children ? color[Math.floor(Math.random()*100)%32] : null})//color(d.name) : null; })
		.text(function(d) { return d.children ? null : d.name; });

		d3.selectAll("input").on("change", function change() {
			var value = this.value === "count"
				? function() { return 1; }
			: function(d) { return d.size; };

			node
			.data(treemap.value(value).nodes)
			.transition()
			.duration(1500)
			.call(position);
		});
	});

	function position() {
		this.style("left", function(d) { return d.x + "px"; })
		.style("top", function(d) { return d.y + "px"; })
		.style("width", function(d) { return Math.max(0, d.dx - 1) + "px"; })
		.style("height", function(d) { return Math.max(0, d.dy - 1) + "px"; });
	}
	
	function setcolor(){
		return "rgb(" + Math.random()*1000%255 + "," + Math.random()*1000%255 + "," +Math.random()*1000%255 + ")"
	}

</script>