<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Denuncia">

	<div class="container">
		<div class="table-responsive">
			<table class="table table-condensed">
				<thead>
					<th>ID da Denúncia</th>
					<th>Data</th>
					<th>Descrição</th>
					<th>Situação</th>
				</thead>
				<tbody>
					<tr>
						<td>${denuncia.id}</td>
						<td>${denuncia.data}</td>
						<td>${denuncia.descricaoDenuncia}</td>
						<td>${denuncia.status.getMessagem()}</td>
					</tr>
				</tbody>

			</table>
		</div>

		<security:authorize access="isAuthenticated()">
		<div class="row">
			<ul>
				<li>agressor - ${denuncia.agressor}</li>
				<li>endereco - ${denuncia.endereco}</li>
				<li>numeroCasa - ${denuncia.numeroCasa}</li>
				<li>pontoReferencia - ${denuncia.pontoReferencia}</li>
				<li>bairro - ${denuncia.bairro}</li>
				<li>tipoDenuncia - ${denuncia.tipoDenuncia}</li>
				<li>descricaoDenuncia - ${denuncia.descricaoDenuncia}</li>
				<li>contato  - ${denuncia.contato}</li>
			</ul>
		</div>
		</security:authorize>


	</div>
</tags:pageTemplate>