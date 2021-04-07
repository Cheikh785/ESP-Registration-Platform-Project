<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/inscription_medecin.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize/css/materialize.min.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" />
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<title>Login Doctor</title>
	</head>
	<body>
		<div style= 'background-image: url("<c:url value="/images/medecin3.jpg"/>"); background-repeat: no-repeat; background-size: cover; background-position: center; height: 743px; filter: blur(0px);  '>
		<h1>Plateforme de gestion de la visite médicale des étudiants de l'UCAD</h1>
		</div>
		<div class="box">
			<h2 id="header">LOGIN</h2>
			<form action="fiche_inscription_medecin" method="post">
				<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="prenom1_doctor" id="label1_doctor">Prénom(s)</label>
					<input type="text" id="prenom1_doctor" name="prenom_doctor" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="nom_doctor" id="label2_doctor">Nom</label>
					<input type="text" id="nom_doctor" name="nom_doctor" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">person</i>
					<label for="login_doctor" id="label3_doctor">Login</label>
					<input type="text" id="login_doctor" name="login_doctor" required>
				</div>
				
				<div class="input-field">
					<i class="material-icons prefix">lock</i>
					<label for="password_doctor"  id="label4_doctor">Password</label>
					<input type="password" id="password_doctor" name="password_doctor" required>
				</div>
				
				<input class="btn btn-primary" id="valider" type="submit" value="Valider" />
				<c:if test="${ valid == false }" > <span class="incorect"> <c:out value="Identifiants incorects"> </c:out> </span> </c:if>
				
			</form>
		</div> 
		<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>