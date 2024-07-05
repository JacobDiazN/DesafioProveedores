<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
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
						<a class="nav-link" href="delete.jsp">Eliminar Proveedor</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<main class="bgdark2">
    <div class="container">
        <h1 class="text-center">Actualizar Proveedor</h1>
        <form action="UpdateProveedorServlet" method="post">
            <div class="mb-3">
                <label for="id" class="form-label">ID del Proveedor</label>
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required>
            </div>
            <div class="mb-3">
                <label for="rut" class="form-label">RUT</label>
                <input type="text" class="form-control" id="rut" name="rut" required>
            </div>
            <div class="mb-3">
                <label for="direccion" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="direccion" name="direccion" required>
            </div>
            <div class="mb-3">
                <label for="correo" class="form-label">Correo</label>
                <input type="email" class="form-control" id="correo" name="correo" required>
            </div>
            <div class="mb-3">
                <label for="telefono" class="form-label">Teléfono</label>
                <input type="text" class="form-control" id="telefono" name="telefono" required>
            </div>
            <div class="mb-3">
                <label for="contacto" class="form-label">Contacto</label>
                <input type="text" class="form-control" id="contacto" name="contacto" required>
            </div>
            <div class="mb-3">
                <label for="telefono_contacto" class="form-label">Teléfono del Contacto</label>
                <input type="text" class="form-control" id="telefono_contacto" name="telefono_contacto" required>
            </div>
            <div class="row py-2 justify-content-center">
				<div class="col-auto">
					<button type="submit" class="btn btn-primary">
						<i class="fa-solid fa-pen-to-square" style="color: #ffffff;"></i> Modificar
					</button>
					<a class="btn btn-info" href="index.jsp">Regresar <i class="fa-solid fa-rotate-left" style="color: #ffffff;"></i> </a>
				</div>
			</div>
        </form>
    </div>
	</main>
	<br><br>
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
