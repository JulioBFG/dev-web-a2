<%@page import="model.Contato"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<link rel="stylesheet" href="assets/css/index.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
<link rel="stylesheet" href="materialize/css/materialize.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Contatos</title>
</head>
<header id="header">
	<div class = "white">
		<a href="home.html" class="logo">Orderfy</a>
		<nav class="right"> </nav>
	</div>
</header>
<div id="list" class="container">
	<h1>Contatos</h1>
	<div id="list-left">
	<c:if test="${not empty contatos}">
		<c:forEach items="${contatos}" var="contato">
			<li><strong>Nome:</strong> ${contato.nome} ${contato.sobrenome}</span></li>
			<li><span> <strong>Email:</strong> ${contato.email} </span></li>
			<li><span> <strong>Telefone:</strong> ${contato.telefone}</span></li><br>
			<a class="waves-effect waves-light btn" href="/desenvolvweb/excluir-contato?id=${contato.id}">Excluir </a>
			<a class="waves-effect waves-light btn" href="busca-contato?id=${contato.id}">Alterar</a><br><br>
		</c:forEach>
	</c:if>
	<c:if test="${empty contatos}">
		<h2 style="color: red;">Nenhum contato cadastrado</h2>
	</c:if>
	</div>
</div><br><br>
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