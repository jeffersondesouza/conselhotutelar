<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="titulo" required="true"%>
<%@ attribute name="bodyClass" required="false"%>

<!DOCTYPE html>
<html>
<head>
	<title>${titulo} | Conselho Tutelar</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
	<link href="${contextPath}resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />	
		
	<link href="${contextPath}resources/css/style.css" rel="stylesheet" type="text/css" media="all" />	
</head>

<body class="{bodyClass}">
	<%@include file="/WEB-INF/views/templates/header.jsp"%>

	<jsp:doBody />

	<%@include file="/WEB-INF/views/templates/footer.jsp"%>

</body>
</html>