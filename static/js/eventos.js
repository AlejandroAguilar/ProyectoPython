$( document ).ready(function() {
    console.log( "ready!" );



    $( "#button_submit" ).click(function() {

    	var	usuario = $("#usuario").val();
    	var pass = $("#pass").val();

	  if (true) {

	  		console.log("Envio inf");
	  		console.log(usuario);
	  		console.log(pass);

		    $.ajax({
			  method: "POST",
			  url: "/",
			  data: { "usuario": usuario, "pass": pass },
			  //dataType: 'json',
			  success:function(data) {
			    console.log("Exito"); 

			    console.log("resultado: ".data.resultado);


			  },
		      error: function(xhr, textStatus, error) {
			      console.log("Error");			

			      console.log(xhr.statusText);
			      console.log(textStatus);
			      console.log(error);      

			      $("#botonInicio").html('¡Error!');
                   setTimeout(function(){                            
                        $("#botonInicio").html('Ingreso');
                   }
                   ,1800);
			  }
			});
		}
	});

    

});