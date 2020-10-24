<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
		<!--Icono para la página-->   
        <link rel="icon" href="resources/img/icono.png" type="image/png">
        <link rel="stylesheet" href="resources/css/styles.css">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

	<title>Minimarket MiKasa</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/shared/barraNavegacion.jsp"></jsp:include>
	
	<div class="container mt-4 mb-4">
	    <div class="row">
		    <div class="col-md-6">
			    <h2>Minimarket MiKasa.</h2>
				<p>	Les da la Bienvenida, presentado en estos momentos de
					Emergencia Sanitaria la solución para que te quedes en casa.
				</p>
				<p>	
					Brindandote para ello seguridad y rapidez te ofrecemos 
					los siguientes productos de manera Online:
				</p>
				<p>- Frutas y Verduras Frescas.</p>
				<p>- Abarrotes de primera necesidad.</p>
				<p>- Pollo, carnes y bebidas gaseosas.</p><br>
					
					Cumpliendo de esta manera en forma responsable con todos los
					requisitos de la ley de Salud.
			    </p>
		    </div>
	    	<div class="col-md-6">
	    		<jsp:include page="/WEB-INF/views/shared/carrousel.jsp"></jsp:include>
	        </div>
	     
	    </div>
    </div>
    
        <jsp:include page="/WEB-INF/views/shared/footer.jsp"></jsp:include>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
 
</body>
</html>