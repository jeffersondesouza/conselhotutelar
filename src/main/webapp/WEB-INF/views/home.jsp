<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Página Inicial">
	<div class="container text-center">
		<div class="page-header">
			<h1>Denúncia Virtual</h1>
		</div>
		<div class="row">

			<a href="/conselho/fazer-denuncia" class="well col-sm-5"> <span>Fazer
					denúncia</span>
			</a>

			<div class="col-sm-2"></div>

			<a href="/conselho/acompanhar-denuncia" class="well col-sm-5"> <span>Acompanhar
					Denuncia</span>
			</a>
		</div>
	</div>
</tags:pageTemplate>


	
