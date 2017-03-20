<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>


<header>

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
					<security:authorize access="isAnonymous()">
						<li><a href="#">Quem Somos</a></li>
						<li><a href="/conselho/fazer-denuncia">Denunciar</a></li>
						<li><a href="/conselho/acompanhar-denuncia">Acompanhe sua
								denúncia</a></li>
						<li><a href="/conselho/login" class="padding-left"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</security:authorize>

					<security:authorize access="isAuthenticated()">
						<li><a href="/conselho/denuncias">Denuncias</a></li>
						<li><a href="/conselho/fazer-denuncia">Fazer Denuncia</a></li>
						<li><a href="/conselho/denuncias">Processos</a></li>
						<li><a href="/conselho/denuncias">Criar Processos</a></li>
						<li><a href="/conselho/logout" class="padding-left"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					</security:authorize>

				</ul>
			</div>
		</div>
	</nav>


</header>