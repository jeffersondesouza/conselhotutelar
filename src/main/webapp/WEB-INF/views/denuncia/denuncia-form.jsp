<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Fazer Denpuncia">



	<div class="container text-center">
		<div class="page-header">
			<h1>Denúncia Virtual</h1>
		</div>
		<div class="row">

			<form:form action="/conselho/salvar-denuncia" method="post">

				<fieldset>
					<legend>Dados do Agressor</legend>


					<div class="form-group">
						<label class="col-sm-12 text-left col-form-label">Nome ou
							Apelido do agressor</label> <input type="text" name="agressor"
							class="form-control" />
					</div>

					<div class="form-group">
						<label class="col-sm-10 text-left col-form-label">Endereço</label>
						<label class="col-sm-2 text-left col-form-label">Número</label>

						<div class="col-sm-10 no-padding-left">
							<input type="text" name="endereco" class="form-control" />
						</div>
						<div class="col-sm-2 no-padding-right">
							<input type="text" name="numeroCasa" class="form-control " />
						</div>

					</div>



					<div class="form-group">
						<label class="col-sm-12 text-left col-form-label">Bairro</label> <input
							type="text" name="bairro" class="form-control" />
					</div>
					<div class="form-group">
						<label class="col-sm-12 text-left col-form-label">Ponto de
							Referência</label>
						<textarea class="form-control" name="pontoReferencia" rows="3"></textarea>
					</div>
				</fieldset>

				<fieldset>
					<legend>Dados da Denúncia</legend>

					<div class="form-group">
						<label class="col-sm-12 text-left col-form-label">Tipo de
							Denúncia</label> <select class="form-control" name="tipoDenuncia">
							<option>Selecione a Categoria da Agressão</option>

							<c:forEach items="${tiposAgressao}" var="agressao">
								<option value="${agressao.nome}">${agressao.nome}</option>
							</c:forEach>


						</select>



					</div>
					<div class="form-group">
						<label class="col-sm-12 text-left col-form-label">Descrição
							da Denúncia</label>

						<textarea class="form-control" name="descricaoDenuncia" rows="10"></textarea>
					</div>
				</fieldset>


				<fieldset>
					<legend>Contato</legend>

					<div>
						<label class="col-sm-12 text-left col-form-label">Telefone
							para contato</label> <input type="text" name="contato"
							placeholder="Opcional" class="form-control" />
					</div>
				</fieldset>

				<br />
				<input type="submit" value="Fazer Denúncia" class="btn btn-primary" />

				<input type="hidden" name="${_csrf.parameterName }"
					value="${_csrf.token }" />
			</form:form>


			<br />
		</div>
	</div>
</tags:pageTemplate>