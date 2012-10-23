Raphael.fn.equilatero = function(tipo,x, y,color,i,j) {
	var triangulo = null
	var size = 116
	//var altura = 80.5
	var r = 360//= i == 0? 0 : 360
	switch(tipo){
		case 0:
			path = ["M", x, y]; //size / 2
			path = path.concat(["L", x + size/2, (y + altura)]);
			path = path.concat(["L", x - size/2, (y + altura)]);
			triangulo = this.path(path.concat(["z"]).join(" ")).attr({
				"fill": color, 
				"stroke": 0,
			/*"identificador" : "a"+i+j+""*/
			})
			.data("i",i*j)
			.data("x",x)
			.data("y",y)
			.click(function(){
				display(this.data("i"))
			})
			.animate({
				transform: "r"+r+","+x+","+y
			}, 700 , "<>");
            
			break;
		
		case 1:
			path = ["M",x,y+altura]//size];
			path = path.concat(["L", x + size/2 , (y)]);
			path = path.concat(["L", x - size/2 , (y)]);
			triangulo =   this.path(path.concat(["z"]).join(" ")).attr({
				"fill"  : color, 
				"stroke": 0,
			/*"identificador" : "a"+i+j+""*/
			})
			.data("i",i*j)
			.data("x",x)
			.data("y",y)
			.click(function(){
				display(this.data("i"))
			})
			.animate({
				transform: "r"+r+","+x+","+y
			}, 700, "<>");
            
			break;
	}
	
	return triangulo
};

function calculateA(b){
	return Math.floor(Math.round(b/Math.sqrt(3)))
}