<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<!--container mt-4 mb-4  .. container my-4-->
		<jsp:include page="/WEB-INF/views/shared/carrousel2.jsp"></jsp:include>
	</div>
	
		<div class="container mt-4">
		<div class="row">
			<c:if test="${mensaje != null }">
				<div class="col-sm">
					<div class="alert alert-success" role="alert">
						<strong>Excelente </strong> ${mensaje }
						<c:remove var="mensaje"/>
					</div>
				</div>
			</c:if>
			<c:if test="${error != null }">
				<div class="col-sm">
					<div class="alert alert-danger" role="alert">
						<strong>Tenemos un Problema!!! </strong> ${error }
						<c:remove var="mensaje"/>
					</div>
				</div>
			</c:if>
		</div>
		<div class="table-responsive-md">
			<table class="table table-bordered table-hover">
	            <thead class="thead-dark">
	                <tr>
	                	<th>Codigo</th>
	                    <th>Descripcion</th>
	                    <th>Valor</th>
	                    <th>Stock</th>
	                    <th>Categoria</th>
	                    <th>Fabricante</th>
	                    <th colspan="2">Acciones</th>
	                </tr>
	            </thead>
	            <tbody>
	                <c:forEach var="producto" items="${productos}">
	                	<tr>
		                    <td>${producto.getCodigo()}</td>
		                    <td>${producto.getDescripcion()}</td>
		                    <td>${producto.getValor()}</td>
		                    <td>${producto.getStock()}</td>
		                    <td>${producto.getCategoria()}</td>
		                    <td>${producto.getFabricante()}</td>
		                    <td>
		                    	<form id="eliminar${producto.getCodigo() }" action="eliminar" method="post">
		                    		<input type="hidden" name="codigo" value="${producto.getCodigo() }">
		                    		<input type="submit" class="btn btn-dark" value="Eliminar">
		                    	</form><br>	
		                    </td>                    	
		                    <td>
					        <div>
					        	<a class="btn btn-dark" href="modifica">Modificar Producto</a>
					        </div>
		                    </td> 
	                	</tr>
	                </c:forEach>
	            </tbody>
	        </table>
	        <div>
	        	<a class="btn btn-dark" href="index">Volver al inicio</a>
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