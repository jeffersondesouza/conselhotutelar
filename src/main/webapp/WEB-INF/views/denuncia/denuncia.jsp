<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Denuncia">

	<div class="container">
		<br />
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading text-center">Resumo da Denúncia</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>ID da Denúncia</th>
									<th>Data</th>
									<th>Descrição</th>
									<th>Situação</th>
								</tr>
							</thead>

							<tbody>

								<tr>
									<td>${denuncia.id}</td>

									<td>${denuncia.data.getTime()}</td>

									<td>${denuncia.descricaoDenuncia}</td>

									<td>${denuncia.status.getMessagem()}</td>
								</tr>

							</tbody>

						</table>
					</div>
				</div>
			</div>
		</div>

		<security:authorize access="isAuthenticated()">
			<div class="row">
				<div class="panel panel-default">
					<div class="panel-heading text-center">Dados do Agressor</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<thead>
									<tr>
										<th>Agressor</th>
										<th>Endereço</th>
										<th>Número</th>
										<th>Ponto de Referência</th>
										<th>Bairro</th>
									</tr>
								</thead>

								<tbody>

									<tr>
										<td>${denuncia.agressor}</td>

										<td>${denuncia.endereco}</td>

										<td>${denuncia.numeroCasa}</td>

										<td>${denuncia.pontoReferencia}</td>

										<td>${denuncia.bairro}</td>
									</tr>

								</tbody>

							</table>
						</div>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="panel panel-default">
					<div class="panel-heading text-center">Detalhes da Denuncia</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<thead>
									<th>Tipo da Denúncia</th>
									<th>Descrição</th>
									<th>Contato do Denunciante</th>
								</thead>
								<tbody>
									<tr>
										<td>${denuncia.tipoDenuncia}</td>
										<td>${denuncia.descricaoDenuncia}</td>
										<td>${denuncia.contato}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="row">

				<form:form action="/conselho/editar-status-denuncia" method="post">
					<fieldset>
						<legend>Modificar Status da Agressão</legend>

						<div class="form-group">
							<label class="col-sm-12 text-left col-form-label">Tipo de Denúncia</label> 
								<select class="form-control" name="novoStatus">
								<option>Selecione a Categoria da Agressão</option>

								<c:forEach items="${statusDenuncia}" var="status">
									<option value="${status}">${status}</option>
								</c:forEach>
							</select>
						</div>
					</fieldset>
					<br />
					<input type="hidden" name="denunciaId" value="${denuncia.id}"/>
					<input type="submit" value="Salvar" class="btn btn-primary" />
					<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }" />
				</form:form>


				<br />
			</div>

		</security:authorize>
	</div>
</tags:pageTemplate>