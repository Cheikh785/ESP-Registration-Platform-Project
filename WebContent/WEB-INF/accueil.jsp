<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/accueil.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize/css/materialize.min.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<title>Login page</title>
		<style>
		</style>
	</head>
	<body>
		<div style= 'background-image: url("<c:url value="/images/esp11.jpg"/>"); background-repeat: no-repeat; background-size: cover; background-position: center; height: 739px; filter: blur(2px);  '></div>
		<div class="box">
			<h2 id="header">LOGIN</h2>
			<form action="accueil" method="post">
				<div class="input-field">
					<i class="material-icons prefix">person</i>
					<label for="login" id="login">Login</label>
					<input type="text" id="login" name="login" required>
				</div><br>
				
				<div class="input-field">
					<i class="material-icons prefix">lock</i>
					<label for="password" id="password">Password</label>
					<input type="password" id="password" name="password" required>
				</div><br>
				
				<input class="btn btn-primary" id="valider" type="submit" value="Valider" />
				<c:if test="${ !empty valid && valid == false }" > <span class="incorect"> <c:out value="Identifiants incorects"> </c:out> </span> </c:if>
				
			</form>
		</div> 
		<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>















