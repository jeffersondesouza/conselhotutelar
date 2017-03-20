<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Busca Denúncia">

	<div class="continer">
		<h1>Denúncias ${denuncias.size()}</h1>
	</div>
	

	<div class="table-responsive">
		<table class="table table-condensed">
			<thead>
				<th>ID da Denúncia</th>
				<th>Data da Denúncia</th>
				<th>Descrição</th>
				<th>Situação</th>
			
			</thead>
			<tbody>
				<c:forEach items="${denuncias }" var="denuncia">
				<tr>
					<td>${denuncia.id}</td>
					<td>${denuncia.data.getTime()}</td>
					<td>${denuncia.descricaoDenuncia}</td>
					<td>${denuncia.status.getMessagem()}</td>
					<td>
					<form:form action="/conselho/buscar-denuncia">
						<input type="hidden" name="denunciaId" value="${denuncia.id}" />
						<input type="submit" class="btn btn-primary" value="Detalhes"/>
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
					</form:form>
					</td>
				</tr>
				</c:forEach>
			</tbody>

		</table>

	</div>


</tags:pageTemplate>
