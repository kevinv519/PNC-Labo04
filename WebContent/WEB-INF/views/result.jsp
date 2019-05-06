<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Producto agregado</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body style="min-height: 100vh;" class="bg-light">
	<div class="container-fluid text-center m-4">
        <h1>${product.name} fue agregado con exito</h1>
        <p>Precio: $ ${product.price }</p>
        <p>Expira en: ${product.expirationDate }</p>
        <a href="${pageContext.request.contextPath}" class="btn btn-primary btn-lg">Agregar más productos</a>
    </div>
</body>
</html>