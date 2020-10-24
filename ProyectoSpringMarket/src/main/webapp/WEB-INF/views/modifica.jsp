<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
		    <h1>MODIFICAR PRODUCTOS MINIMARKET</h1>
		    
				<c:forEach items="${productos}" var="datos">
				
				<div class="card-body">
					<form action="modificarProductos" method="POST">
						<div class="form-group">
						<label for="codigo" class="font-weight-bold">Codigo:</label>
						<input class="form-control" type="text" id="codigo" name="txtCodigo" value="${datos.getCodigo()}" readonly="true">
						</div>
						<div class="form-group">
						<label for="descripcion" class="font-weight-bold">Descripcion:</label>
						<input class="form-control" type="text" id="decripcion" name="txtDescripcion" value="${datos.getDescripcion()}" required>
						</div>
						<div class="form-group">
						<label for="valor" class="font-weight-bold">Valor:</label>
						<input class="form-control" type="text" id="valor" name="txtValor" value="${datos.getValor()}" required>
						</div>
						<div class="form-group">
						<label for="stock" class="font-weight-bold">Stock:</label>
						<input class="form-control" type="text" id="stock" name="txtStock" value="${datos.getStock()}" required>
						</div>
						<div class="form-group">
						<label for="categoria" class="font-weight-bold">Categoria:</label>
						<input class="form-control" type="text" id="categoria" name="txtCategoria" value="${datos.getCategoria()}" readonly="true">
						</div>
						<div class="form-group">
						<label for="fabricante" class="font-weight-bold">Fabricante:</label>
						<input class="form-control" type="text" id="fabricante" name="txtFabricante" value="${datos.getFabricante()}" readonly="true">
						</div>
						<div class="form-group">
						<input type="submit" value="Enviar" class="btn btn-dark">
						<input type="reset" value="Limpiar" class="btn btn-dark">
						</div>
					</form>	
			
				</div>
				
			</c:forEach>
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