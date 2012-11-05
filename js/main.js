var contenedor = document.getElementById("lienzo")
var paper = Raphael(contenedor,document.documentElement.clientWidth,550)
var triangulos = paper.set()
var datos
var altura = 80.5 //100.5
var lado = 116
	
$(document).ready(function(){
	setThings()
	girartriangulos()
})

function setThings(){
	
	$("#participa").click(function(){
		$("#participamodal").modal()
	})
    
	$("#triangulo,#proyecto").click(function(){
		window.location=$(this).find("a").attr("href"); 
		return false;
	})

	/* --------------------- */
	
	$("#participamodal").on('click',"#siguiente3",function(){
		
		$("#preguntas-abiertas .advice").hide()
		if(validateform2())
			lesendledata()
		else
			$("#preguntas-abiertas .advice").show()
	})

	/* ----------------------------------------------------------------------------------------------- */
	$("#participamodal").on('click',"#siguiente2",function(){
		$("#participamodal .modal-body").html(siguiente2body())
		$("#participamodal .modal-footer").html('<button id="siguiente3" class="btn btn-primary">Finalizar</button>')
	})
	/*-------------------------------------------------------------------------------------------------------------------------------------------*/
	$('#participamodal').on('click','#siguiente1',function(){
		$("#participamodal .modal-body").html(siguiente1body())
		$("#participamodal .modal-footer").html('<button id="siguiente2" class="btn btn-primary">Siguiente</button>')
	});
	
	$("#participamodal").on('click','#siguiente',function(){
		datos = []
		$("#registro .advice").hide()
		if(validateform1()){
			$("#participamodal .modal-body").html(siguientebody())
			$("#participamodal .modal-footer").html('<button id="siguiente1" class="btn btn-primary">Siguiente</button>')
		}
		else{
			$("#registro .advice").show()
		}
	})
	
	
	$("#participamodal").on('show',function(){
		
		$("#participamodal .modal-body").html(unmodal())
		
		$("#participamodal .modal-footer").html('<button id="siguiente" class="btn btn-primary">Siguiente</button>')
	})

	$('#participamodal').on('hidden', function () {
		$("#registro .advice").hide()
	})
	
	$("#logo").click(function(){  
		removetriangles()
		girartriangulos()
	})
	
	$('#videomodal').on('hidden', function () {
		$(".modal-body .span6").html("")
		removetriangles()
		girartriangulos()
		
	})
}

function display(i){
	
	var identificador = (Math.floor(Math.random()*i*100000))%41 +1
	//console.log(id)
	$.ajax({
		type: "POST",
		url: "class/video.php",
		data : {
			"id": identificador
		},
		dataType: "json",
		success: showcontainer,
		error: showerror
	});
}

function showcontainer(datos){
	if(datos === null){
		
		var identificador = (Math.floor(Math.random()*100000))%41 +1
		//console.log(id)
		$.ajax({
			type: "POST",
			url: "class/video.php",
			data : {
				"id": identificador
			},
			dataType: "json",
			success: showcontainer,
			error: showerror
		});
	}		
	else{
		var colonia = 'ND'//(datos[0].Colonia === null)? "ND": datos[0].Colonia
		var nombre = (datos[0].NombreEncuestado === null || datos[0].NombreEncuestado === "")? "ND":datos[0].NombreEncuestado
		var edad = (datos[0].Edad === null)? "NE" : datos[0].Edad
		$("#myModalLabel1").html("Ficha no: "+datos[0].id*Math.floor(Math.random()*100))
		$("#nombrep").text("nombre: "+nombre)
		$("#edadp").text("edad: "+edad)
		$("#sexop").text("sexo: "+datos[0].Sexo)
		$("#coloniap").text("colonia: "+colonia)
		$("#video").html('<iframe width="560" height="315" frameborder="0" allowfullscreen></iframe>')
		$(".span6 iframe").attr('src','http://www.youtube.com/embed/'+datos[0].youtube)
		$('#videomodal').modal().css({
			'width': function() {
				return ($(document).width() *	.8) + 'px';  
			},
			'margin-left': function () { 
				return -($(this).width() / 2); 
			}
		});
	}
}

function showerror(error,errore,e){
	console.log(error.toString()+", "+errore.toString()+","+e.toString())
}

function validateform1(){
	datos['nombre'] = sanitize_string($("#nombrei").val())
	datos['sexo'] = sanitize_string($("input[name='sexo']:checked").val())
	datos['edad'] = sanitize_string($("select#edadp").val())
	datos["mail"] = sanitize_string($("#mail").val())
	datos['cp'] = sanitize_string($("#cp").val())
	datos['estado'] = sanitize_string($("select#estadoForzado").val())
	
	return (datos["nombre"] && datos["sexo"] && datos["edad"] && datos["estado"])		
}

function validateform2(){
	datos ["prioridad"] =  sanitize_string($("#prioridad").val())
	datos ["hoy"] =		sanitize_string($("#today").val())
	datos ["futuro"] =	sanitize_string($("#futuro").val())
	datos ["accion"] =	sanitize_string($("input[name='hacer']:checked").val())
	
	return ( datos["prioridad"] && datos["hoy"] && datos["futuro"] && datos["accion"])
}

function lesendledata(){	
	$.ajax({
		type: "POST",
		url: "class/cuestionario.php",
		data : {
			"nombre" : datos["nombre"],
			"sexo"	:	datos["sexo"],
			"edad"	:	datos["edad"],
			"mail" : datos["mail"],
			"cp"	:	datos["cp"],
			"estado":	datos["estado"],
			"hoy"	:	datos["hoy"],
			"futuro":	datos["futuro"],
			"prioridad": datos["prioridad"],
			"accion":	datos["accion"]
		},
		//dataType: "json",
		success: showgood,
		error: showbad
	})
}

function showgood(data){
	//if(data){
		$("#participamodal .modal-body").html("<p class='lead'>Gracias por tu participación.</p>")
		$("#participamodal .modal-footer").html("")
	//}
	//else
	//	showbad()
}

function showbad(){
	$("#participamodal .modal-body").html("<p class='lead'>Ocurrio un error, intenta mas tarde.</p>")
	$("#participamodal .modal-footer").html("")
}

function removetriangles(){
	triangulos.forEach(function(e){
		e.remove()
	})
}

function girartriangulos(){
	var color = [
	"#483D2C",    "#756C57",    "#5E503C",    "#887F6E",    "#4F5884",    "#A6BFDF",    "#CCDEE8",    "#B6C7D1",
	"#FFF685",    "#FFF9AE",    "#88AD3F",    "#7FBF8B",    "#98C99F",    "#39B54A",    "#E86D24",    "#EA8E23",
	"#EEA320",    "#F2BC1A",    "#ED1C24",    "#9F1D20",    "#BE1E2D",    "#D14C55",    "#662D91",    "#92278F",
	"#A154A1",    "#C7A0CB",    "#414042",    "#58595B",    "#808285",    "#BCBEC0",    "#FFF200",    "#FFDE17"]
	var orientacion
	var triangulo
	var random
	var tipo
	var anchopagina = document.documentElement.clientWidth
	var numerodetriangulos = (anchopagina/lado+1)*2
	//console.log()
	triangulos = paper.set()
	for(var i=0;i<6;i++){
		for(var j=0;j<numerodetriangulos;j++){
			tipo = j%2
			orientacion = i%2
			random = Math.floor(Math.random()*100)%32
			//triangulo = paper.triangulo(tipo+1, j*(tamano/2)+(-orientacion*(tamano/2)),(i)*tamano,tamano,color[random],i,j)
			triangulo = paper.equilatero( tipo, j*(lado/2) + (-orientacion *(lado/2)),(i*altura), color[random], i, j)
			triangulos.push(triangulo)
		}
	}
}