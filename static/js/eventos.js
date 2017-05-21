$( document ).ready(function() {
    console.log( "ready!" );


    $( "#button_submit" ).click(function() {

    	var	usuario = $("#usuario").val();
    	var pass = $("#pass").val();

	  if (true) {

		    $.ajax({
			  method: "POST",
			  url: "/",
			  data: { "usuario": usuario, "pass": pass },
			  dataType: 'json',
			  success:function(data) {

			    if ( data.resultado ) {
			    	// Se puede quitar el timeout
			     	setTimeout(function(){
                        window.location.href = "/inicio";
                   	}
                    ,0);
			    }

			  },
		      error: function(xhr, textStatus, error) {

			      console.log(xhr.statusText);
			      console.log(textStatus);
			      console.log(error);

			  }
			});
		}
	});

    

});