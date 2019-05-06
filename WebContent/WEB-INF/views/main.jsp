<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nuevo producto</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>body {min-height: 100vh;}</style>
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-12 col-md-2 col-lg-3"></div>
            <div class="col-sm-12 col-md-8 col-lg-6">
                <form:form action="${pageContext.request.contextPath}/addProduct" autocomplete="off" method="POST" modelAttribute="product" class="bg-white p-4">
                    <h2 class="mb-2">Agregar un producto</h2>
                    <div class="form-group">
                        <label for="">Nombre:</label>
                        <form:input type="text" path="name" cssClass="form-control" />
                        <form:errors path="name" cssClass="form-text text-danger"></form:errors>
                    </div>
                    <div class="form-group">
                        <label for="">Marca:</label>
                        <form:input type="text" path="brand" cssClass="form-control" />
                        <form:errors path="brand" cssClass="form-text text-danger"></form:errors>
                    </div>
                    <div class="form-group">
                        <label for="">Descripción:</label>
                        <form:textarea path="description" rows="3" cssStyle="resize:none;" cssClass="form-control" />
                        <form:errors path="description" cssClass="form-text text-danger"></form:errors>
                    </div>
                    <div class="form-group">
                        <label for="">Categoría:</label>
                        <form:input type="text" path="category" cssClass="form-control" />
                        <form:errors path="category" cssClass="form-text text-danger"></form:errors>
                    </div>
                    <div class="form-group">
                        <label for="">Precio:</label>
                        <form:input type="number" path="price" step="any" cssClass="form-control" />
                        <form:errors path="price" cssClass="form-text text-danger"></form:errors>
                    </div>
                    <div class="form-group">
                        <label for="">Fecha de expiración:</label>
                        <form:input type="date" path="expirationDate" cssClass="form-control" />
                        <form:errors path="expirationDate" cssClass="form-text text-danger"></form:errors>
                    </div>
                    <button type="submit" class="btn btn-primary">Agregar</button>
                </form:form>
            </div>
            <div class="col-sm-12 col-md-2 col-lg-3"></div>
        </div>
    </div>
</body>
</html>