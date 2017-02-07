<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="${contextPath}resources/css/style.css" rel="stylesheet" type="text/css" media="all" />


</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/conselho/">Conselho Tutelar</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="/conselho/">Página Inicial</a></li>
        <li><a href="#">Quem Somos</a></li>
        <li><a href="/conselho/fazer-denuncia">Denunciar</a></li>
        <li><a href="/conselho/acompanhar-denuncia">Acompanhe sua denúncia</a></li>
        <li><a href="#" class="padding-left"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

  
<div class="container text-center">    
  <div class="page-header">
    <h1>Denúncia Virtual</h1>      
  </div>
  <div class="row">
   
        <form action="/conselho/salvar-denuncia" method="post">
      
      <fieldset>
        <legend>Dados do Agressor</legend>
        
      
      <div class="form-group">
        <label class="col-sm-12 text-left col-form-label">Nome ou Apelido do agressor</label>
        <input type="text" name="agressor" class="form-control" />
      </div>
      
      <div class="form-group">
        <label class="col-sm-10 text-left col-form-label">Endereço</label>
        <label class="col-sm-2 text-left col-form-label">Número</label>

        <div class="col-sm-10 no-padding-left">
          <input type="text" name="endereco" class="form-control"/>
        </div>
        <div class="col-sm-2 no-padding-right">
          <input type="text" name="numeroCasa" class="form-control "/>
        </div>

      </div>



      <div class="form-group">
        <label class="col-sm-12 text-left col-form-label">Bairro</label>
        <input type="text" name="bairro" class="form-control"/>
      </div>
      <div class="form-group">
        <label class="col-sm-12 text-left col-form-label">Ponto de Referência</label>
        <textarea class="form-control" name="pontoReferencia" rows="3"></textarea>
      </div>
      </fieldset>
      
      <fieldset>
        <legend>Dados da Denúncia</legend>
      
       <div class="form-group">
          <label class="col-sm-12 text-left col-form-label">Tipo de Denúncia</label>
          
			<select class="form-control" name="tipoDenuncia">
		       <option>Selecione a Categoria da Agressão</option>
		       
		       <c:forEach items="${tiposAgressao}" var="agressao">
		       		<option value="${agressao.nome}">${agressao.nome}</option>		       		
		       </c:forEach>
		       
		       
		     </select>

          
          
        </div>
        <div class="form-group">
          <label class="col-sm-12 text-left col-form-label">Descrição da Denúncia</label>
          
          <textarea class="form-control" name="descricaoDenuncia" rows="10"></textarea>
        </div>
      </fieldset>
      
      
      <fieldset>
        <legend>Contato</legend>
        
        <div>
          <label class="col-sm-12 text-left col-form-label">Telefone para contato</label>
          <input type="text" name="contato" placeholder="Opcional" class="form-control"/>
        </div>
      </fieldset>
      
      <br/>
      
      <input type="submit" value="Fazer Denúncia" class="btn btn-primary"/>
      
    </form>
    

    <br/>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Gambiarra Tec</p>
</footer>

</body>
</html>