<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/inscription_scolarite.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize/css/materialize.min.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" />
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<title>Login schooling's agent</title>
	</head>
	<body>
		<div style= 'background-image: url("<c:url value="/images/esp6.jpg"/>"); background-repeat: no-repeat; background-size: cover; background-position: center; height: 743px; filter: blur(0px);  '>
		<h1>UNIVERSITE CHEIKH ANTA DIOP DE DAKAR</h1>
		<h2>ECOLE SUPERIEURE POLYTECHNIQUE DE DAKAR </h2>
		<h3>SERVICE DE SCOLARITE</h3>
		</div>
		<div class="box">
			<h2 id="header">LOGIN</h2>
			<form action="inscription_scolarite" method="post">
				<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="prenom_scolarite" id="label1_scolarite">Prénom(s)</label>
					<input type="text" id="prenom_scolarite" name="prenom_scolarite" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="nom_scolarite" id="label2_scolarite">Nom</label>
					<input type="text" id="nom_scolarite" name="nom_scolarite" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">person</i>
					<label for="login_scolarite" id="label3_scolarite">Login</label>
					<input type="text" id="login_scolarite" name="login_scolarite" required>
				</div>
				
				<div class="input-field">
					<i class="material-icons prefix">lock</i>
					<label for="password_scolarite"  id="label4_scolarite">Password</label>
					<input type="password" id="password_scolarite" name="password_scolarite" required>
				</div>
				
				<input class="btn btn-primary" id="valider" type="submit" value="Valider" />
				<c:if test="${ valid == false }" > <span class="incorect"> <c:out value="Identifiants incorects"> </c:out> </span> </c:if>
				
			</form>
		</div> 
		<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>