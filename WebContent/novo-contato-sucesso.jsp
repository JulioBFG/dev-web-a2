<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="assets/css/index.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
<link rel="stylesheet" href="materialize/css/materialize.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Novo Contato</title>
</head>

<body>
	<header id="header">
		<div class = "white">
			<a href="home.html" class="logo">Orderfy</a>
			<nav class="right"> </nav>
		</div>
	</header>
	<div id="div-sucess"class="row">
		<p class="center-align">
			<strong>Contato Cadastrado!</strong>
			<div></div>
		<p class="center-align">
			<strong>Nome:</strong> ${contato.nome} ${contato.sobrenome}<br>
			<strong>Telefone:</strong> ${contato.telefone}<br>
			<strong>Email:</strong> ${contato.email}<br>
	</div>

	<footer id="footer" class= "footer-list">
		<div class="inner">
			<ul class="actions">
				<li class="icon"><a href="home.html" class="button contact">Home</a>
				</li>
			</ul>
		</div>
	</footer>
</body>
</html>