<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="${contextPath}resources/css/style.css" rel="stylesheet"
	type="text/css" media="all" />


</head>
<body>

	<header class="header-login">
		<h1>Conselho Tutelar</h1>
	</header>


	
		<div class="login-form">
	        <h1>Infome seus dados para fazer o Login</h1>
	        <form:form servletRelativeAction="/login" method="post">
	            <div class="form-group">
	                <label>Nome</label>
	                <input type="text" name="username" class="form-control" />
	            </div>
	            <div class="form-group">
	                <label>Senha</label>
	                <input type="password" name="password" class="form-control" />
	            </div>
	            <button type="submit" class="btn btn-primary">Logar</button>
	        </form:form>
    </div>

	<%@include file="/WEB-INF/views/templates/footer.jsp" %>

</body>
</html>