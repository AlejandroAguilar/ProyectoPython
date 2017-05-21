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
			  success:function() {
			      console.log("regreso"); 
			  }
			});
		}
	});

    

});