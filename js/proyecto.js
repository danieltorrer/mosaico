$(document).ready(function(){
	var num1 = Math.floor(Math.random()*1000)%24+1
	var num2 = Math.floor(Math.random()*1000)%24+1
	$("#btn-izq").css("background", 'url(img/full'+num1+'.jpg) no-repeat center center fixed')
	$("#btn-der").css("background", 'url(img/full'+num2+'.jpg) no-repeat center center fixed')
	
	$("#title").click(function(){

		$("#modaldesc").modal().css({
            'width': function() {
                return ($(document).width() *	.8) + 'px';  
            },
            'margin-left': function () { 
                return -($(this).width() / 2);
            }
        });
    })
	
    $("#btn-izq").click(function(){
        //$("#modalmedia .modal-header h3").html("Fotos")
		
        //$("#modalmedia .modal-body").html()
		
        $("#modalimages").modal().css({
            'width': function() {
                return ($(document).width() *	.8) + 'px';  
            },
            'margin-left': function () { 
                return -($(this).width() / 2); 
            }
        });
    })
	
    $("#btn-der").click(function(){
        $("#modalvideo").css({
            'width': function() {
                return ($(document).width() *.7) + 'px';  
            },
            'margin-left': function () { 
                return -($(this).width() / 2); 
            }
        }).modal()
    })
})