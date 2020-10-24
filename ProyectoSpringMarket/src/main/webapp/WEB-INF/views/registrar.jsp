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
		    <h1>REGISTRAR PRODUCTOS MINIMARKET</h1>
		    <form action="registrarDatos" method="POST">
	        	<div class="form-group">
	                <label for="codigo">Ingrese Código:</label>
	                <input type="number" class="form-control" id="codigo" name="txtCodigo" placeholder="Ej. 1000">
	            </div>
	            <div class="form-group">
	                <label for="descripcion">Descripción Producto:</label>
	                <input type="text" class="form-control" id="descripcion" name="txtDescripcion" placeholder="Ej. Lonco Leche">
	            </div>
	            <div class="form-group">
	                <label for="valor">Valor Unitario:</label>
	                <input type="number" class="form-control" id="valor" name="txtValor" placeholder="Ej. 3580">
	            </div>
	            <div class="form-group">
	                <label for="stock">Stock Producto:</label>
	                <input type="number" class="form-control" id="stock" name="txtStock" placeholder="Ej. 25">
	            </div>
				<div class="form-group">
				    <label for="categoria">Categoria:</label>
				    <select class="form-control" name="txtCategoria" id="categoria" required>
				        <option value="cero">Seleccionar Categoria</option>
				        <option value="Aceite">Aceite</option>
				        <option value="Bebidas">Bebidas</option>
				        <option value="Harina">Harina</option>
				        <option value="Lacteos">Lacteos</option>
				    </select>
				</div>
				<div class="form-group">
				    <label for="fabricante">Fabricante:</label>
				    <select class="form-control" name="txtFabricante" id="fabricante" required>
				        <option value="cero">Seleccionar Fabricante</option>
				        <option value="Luchetti">Luchetti</option>
				        <option value="Coca Cola">Coca Cola</option>
				        <option value="La Selecta">La Selecta</option>
				        <option value="Colun">Colun</option>
				    </select>
				</div>
	            <div class="form-group">
	                <input type="submit" value="Enviar" class="btn btn-dark">
	                <input type="reset" value="Limpiar" class="btn btn-dark">
	            </div>
        	</form>
	
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