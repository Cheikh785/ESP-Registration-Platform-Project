<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize/css/materialize.min.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" /> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<title>inscription registration</title>
	</head>
	<body>
		<div class="alert alert-success" role="alert">
  			<h2>Bienvenue � l'Ecole Sup�rieure Polytechnique de Dakar ${ prenom1 } ${ prenom2 } ${ prenom3 } ${ nom } !</h2>
		</div>
		<p><br><br></p>
		<div class="card">
  			<!-- <div class="card-header"> INFORMATION </div> -->
  			<div class="card-body">
    			<h5 class="card-title"></h5>
    			<p class="card-text"> Vous avez remplie votre fiche d'inscription avec succ�s. Il ne vous reste plus qu'a faire la visite m�dicale
    			et de s'acquitter des frais d'inscription pour pouvoir re�evoir votre certificat d'inscription et votre cate d'�tudiant 
    			au niveau de la scolarit�. <br> Vous pouvez toujours v�rifier si votre visite m�dicale ou paiement des frais d'inscription a �t� valider
    			ou pas en consultant le champs d�di� � cela au niveau de votre fiche d'inscription.<br><br><a href="fiche_etudiant" class="btn btn-primary">V�rifier</a></p>
  			</div>
		</div>
	</body>
	<span style="font-size: 20px; position: absolute; left: 86%; top: 95%;">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
</html>



