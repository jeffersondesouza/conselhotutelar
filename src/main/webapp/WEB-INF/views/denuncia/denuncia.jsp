<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/conselho/">Conselho Tutelar</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="/conselho/">Página Inicial</a></li>
					<li><a href="#">Quem Somos</a></li>
					<li><a href="/conselho/fazer-denuncia">Denunciar</a></li>
					<li><a href="/conselho/acompanhar-denuncia">Acompanhe sua
							denúncia</a></li>
					<li><a href="#" class="padding-left"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
	<div class="table-responsive">
		<table class="table table-condensed">
			<thead>
				<th>ID da Denúncia</th>
				<th>Descrição</th>
				<th>Situação</th>
			</thead>
			<tbody>
				<tr>
					<td>${denuncia.id}</td>
					<td>${denuncia.descricaoDenuncia}</td>
					<td>${denuncia.status.getMessagem()}</td>
				</tr>
			</tbody>

		</table>

	</div>
	</div>



	<footer class="container-fluid text-center">
		<p>Gambiarra Tec</p>
	</footer>

</body>
</html>