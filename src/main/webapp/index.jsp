<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Proveedores</title>
<link rel="stylesheet" href="./assets/css/style.css"/>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">


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
						<a class="nav-link" href="/create.jsp">Crear Proveedor</a> 
						<a class="nav-link" href="<%=request.getContextPath()%>/teachers">Contacto</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<main class="bgdark2">
		<div class="container text-center">
			<h1>CRUD Proveedores</h1>
		</div>
		<div class="row py-5 justify-content-center">
			<div class="col-auto">
				<a href="create.jsp"><button type="button"
						class="btn btn-primary">Create</button></a> <a href="read.jsp"><button
						type="button" class="btn btn-success">Read</button></a> <a
					href="update.jsp"><button type="button" class="btn btn-warning">Update</button></a>
				<a href="delete.jsp"><button type="button"
						class="btn btn-danger">Delete</button></a>
			</div>
		</div>
	</main>
	<footer	class="container text-center bg-primary-subtle text-primary-emphasis pb-2 pt-2">
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