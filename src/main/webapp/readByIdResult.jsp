<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResultadoBusqueda</title>
<link rel="stylesheet" href="./assets/css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/81a2ed02b0.js"
	crossorigin="anonymous"></script>
</head>
<body class="container ">
	<header>
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Proveedores</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>">Home</a> 
						<a class="nav-link" href="create.jsp">Crear Proveedor</a>
						<a class="nav-link" href="ReadAllProveedoresServlet">Ver Proveedor</a>	
						<a class="nav-link" href="ReadById.jso">Buscar Proveedor</a>						
						<a class="nav-link" href="update.jsp">Modificar Proveedor</a>
						<a class="nav-link" href="delete.jsp">Eliminar Proveedor</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<main class="bgdark2">
		<div class="container pb-3">
			<h1 class="text-center">Detalles del Proveedor</h1>
			<table class="table">
				<thead class="table-dark">
					<tr>
						<th>ID</th>
						<th>Nombre</th>
						<th>RUT</th>
						<th>Dirección</th>
						<th>Correo</th>
						<th>Teléfono</th>
						<th>Contacto</th>
						<th>Teléfono Contacto</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${proveedor != null}">
                        <tr>
                            <td><c:out value="${proveedor.id}" /></td>
                            <td><c:out value="${proveedor.nombre}" /></td>
                            <td><c:out value="${proveedor.rut}" /></td>
                            <td><c:out value="${proveedor.direccion}" /></td>
                            <td><c:out value="${proveedor.correo}" /></td>
                            <td><c:out value="${proveedor.telefono}" /></td>
                            <td><c:out value="${proveedor.contacto}" /></td>
                            <td><c:out value="${proveedor.telefonoContacto}" /></td>
                        </tr>
                    </c:if>
                    <c:if test="${proveedor == null}">
                        <tr>
                            <td colspan="8" class="text-center">Proveedor no encontrado</td>
                        </tr>
                    </c:if>
				</tbody>
			</table>
			<div class="row py-2 justify-content-center">
				<div class="col-auto">
					<a class="btn btn-info" href="index.jsp">Regresar <i
						class="fa-solid fa-rotate-left" style="color: #ffffff;"></i>
					</a>
				</div>
			</div>
		</div>

	</main>
	<footer
		class="container text-center bg-primary-subtle text-primary-emphasis pb-2 pt-2">
		<p>
			Escíbenos a <a href="mailto:contacto@lacosa.com">contacto</a>
		</p>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous">
	</script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous">
	</script>
	<script
		src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js">
	</script>
	<script>
		$(document).ready(()=>{
    	$('#tblActor').DataTable();
		})
	</script>
</body>
</html>