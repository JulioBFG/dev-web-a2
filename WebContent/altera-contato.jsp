<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<link rel="stylesheet" href="assets/css/index.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Altera Contato</title>
</head>

<body>
	<header id="header">
		<div class = "white">
			<a href="home.html" class="logo">Orderfy</a>
			<nav class="right"> </nav>
		</div>
	</header>
	<form action="/desenvolvweb/alterar-contato" method="POST">
		<div id="externa">
			<td><input type="hidden" name="id" value="${contato.id}"> Nome: <br> </td>
			<p>
				<input type="text" name="nome" value="${contato.nome}"
					style="border-top: 1; border-right: 1; border-left: 1; width: 300px; height: 30px">
			</p>
			Sobrenome:
			<p>
				<input type="text" name="sobrenome" value="${contato.sobrenome}"
					style="border-top: 1; border-right: 1; border-left: 1; width: 300px; height: 30px">
			</p>
			Telefone:
			<p>
				<input type="text" name="telefone" placeholder="(XX) XXXXX-XXXX" value="${contato.telefone}"
					style="border-top: 1; border-right: 1; border-left: 1; width: 300px; height: 30px">
			</p>
			E-mail:
			<p>
				<!-- Caso o navegador seja antigo e não possua suporte ao HTML5 ele valida o email com o JS
				por isso o type email foi alterado para text-->
				<input type="text" name="email" value="${contato.email}"
					style="border-top: 1; border-right: 1; border-left: 1; width: 300px; height: 30px">					
			</p>
			Senha:
			<p>
				<input type="password" name="senha" value="${contato.senha}"
					style="border-top: 1; border-right: 1; border-left: 1; width: 300px; height: 30px">
			</p>
			<input class="button"type="submit" value="Alterar">
		</div>
	</form>
	<br>
	<footer id="footer">
		<div class="inner">
			<ul class="actions">
				<li class="icon"><a href="home.html" class="button contact">Home</a>
				</li>
			</ul>
		</div>
	</footer>
</body>
</html>