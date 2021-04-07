<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/inscription_comptable.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" />
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize/css/materialize.min.css"/>" /> 
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<title>Login Bookkeeper</title>
	</head>
	<body>
		<div style= 'background-image: url("<c:url value="/images/comptable2.jpg"/>"); background-repeat: no-repeat; background-size: cover; background-position: center; height: 739px; filter: blur(0px);  '>
		<h4>Plateforme de gestion du paiement des frais d'inscription des étudiants de l'UCAD</h4>
		</div>
		<div class="box">
			<h2 id="header">LOGIN</h2>
			<form action="inscription_comptable" method="post">
				<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="prenom_comptable" id="prenom_comptable1">Prénom(s)</label>
					<input type="text" id="prenom_comptable" name="prenom_comptable" required><br>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="nom_comptable" id="nom_comptable1">Nom</label>
					<input type="text" id="nom_comptable" name="nom_comptable" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">person</i>
					<label for="login_comptable" id="login_comptable1">Login</label>
					<input type="text" id="login_comptable" name="login_comptable" required>
				</div>
				
				<div class="input-field">
					<i class="material-icons prefix">lock</i>
					<label for="password_comptable"  id="password_comptable1">Password</label>
					<input type="password" id="password_comptable" name="password_comptable" required>
				</div><br>
				
				<input class="btn btn-primary" id="valider" type="submit" value="Valider" />
				<c:if test="${ valid == false }" > <span class="incorect"> <c:out value="Identifiants incorects"> </c:out> </span> </c:if>
				
			</form>
		</div> 
		<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>