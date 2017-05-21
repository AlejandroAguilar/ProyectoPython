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
			  dataType: 'json',
			  success:function(data) {
			    console.log("Exito");
			    console.log(data);
			    console.log("resultado: "+data.resultado);

			    if ( data.resultado ) {
			    	// Se puede quitar el timeout
			     	setTimeout(function(){
			     		console.log('Rediccion')
                        window.location.href = "/inicio";
                   	}
                    ,1800);
			    }

			  },
		      error: function(xhr, textStatus, error) {
			      console.log("Error");

			      console.log(xhr.statusText);
			      console.log(textStatus);
			      console.log(error);

			  }
			});
		}
	});

    

});