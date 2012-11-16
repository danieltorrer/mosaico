$(document).ready(function(){
    $("#title").click(function(){
       // $("#modaldesc .modal-header h3").html("Mosaico Tijuana")
        //$("#modaldesc .modal-body").html("<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>")
		
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