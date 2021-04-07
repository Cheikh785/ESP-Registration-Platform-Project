<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<%-- <link type="text/css" rel="stylesheet" href="<c:url value="/css/message.css"/>" />  --%>
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize/css/materialize.min.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" /> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<title>Success upload</title>
	</head>
	<body>
		<div class="alert alert-success" role="alert">
  			<h2>${ message }</h2>
		</div>
		<p><br><br></p>
		<div class="card">
  			<div class="card-header"> INFORMATION </div>
  			<div class="card-body">
    			<h5 class="card-title">Votre attention svp !!!</h5>
    			<p class="card-text">Votre compte est en cours d'activation, veuillez utiliser les liens suivants pour remplir votre fiche d'inscription et faire l'inscription en ligne.
					Renseigner votre login à votre medecin(seulement les medecin dediés) et à l'agent comptable pour pouvoir faire la visite médicale et s'acquitter des frais d'inscription
					dans les plus bref delais.</p>
    			<a href="fiche_etudiant" class="btn btn-primary">Remplir la fiche d'incription</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<a href="https://preinscriptionenligne.ucad.sn:8443/InscriptionWEB/authentification/authentification.zul" class="btn btn-primary">Se Pré-inscrire en ligne</a>
  			</div>
		</div>
		<span style="position: absolute; left: 86%; top: 95%; font-size: 20px;">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>



