<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Busca Denúncia">

	<div class="container text-center">
		<div class="page-header">
			<h1>Denúncia Virtual</h1>
		</div>
		<div class="row">

			<form:form action="/conselho/buscar-denuncia" method="post"
				class="form-inline">
				<fieldset>
					<legend>Informe o código de denuncia feita</legend>
					<div class="form-group">
						<label>Código</label> 
						<input type="text" name="denunciaId" class="form-control" />
					</div>


				</fieldset>
				<br />
				<input type="submit" value="Buscar Denúncia" class="btn btn-primary" />
				<input type="hidden" name="${_csrf.parameterName }"
					value="${_csrf.token }" />
			</form:form>
			<br />
		</div>
	</div>

</tags:pageTemplate>
