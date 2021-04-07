<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/verifier_validite_fiche.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" />
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize/css/materialize.min.css"/>" /> 
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<script>
			
		</script>
		<title>Student's payment</title>
	</head>
	<body id="body">	
		<div class="alert alert-info">
  			<div class="card-body">
    			<h5 class="card-title">Délivrance du certificat d'inscription</h5>
    			<p class="card-text">Renseigner les identifiants de l'étudiant pour vérifier s'il a effectué la visite médicale et s'est 
					acquitté des frais d'inscription.</p>
    		</div>
		</div>
		<div class="box1">	
			<form action="verifier_fiche" method="post">
				<div class="input-field">
					<i class="material-icons prefix">person</i>
					<label for="input_etudiant1" id="login_etudiant1">Login</label>
					<input type="text" id="input_etudiant1" name="login" required><br>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">lock</i>
					<label for="input_etudiant2" id="login_etudiant2">Password</label>
					<input type="password" id="input_etudiant2" name="password" required>
				</div>
				<input class="btn btn-primary" id="verifier_etudiant" type="submit" value="Verifier" />	
				<c:if test="${ !empty valid && valid == false }" > <span class="incorect"> <c:out value="Identifiants incorects"> </c:out> </span> </c:if>		
			</form>
		</div>
		<div class="<c:if test="${ cachet_medecin == 'Oui' }"><c:out value="alert_medecin alert-success"></c:out></c:if>" style='display:<c:if test="${ cachet_medecin == 'Non' }"><c:out value="none"></c:out></c:if> <c:if test="${ empty cachet_medecin }"><c:out value="none"></c:out></c:if>;' >
  			<div class="card-body">
    			<p class="card-text"> ${ prenom1 } ${ prenom2 } ${ prenom3 } ${ nom } <c:if test="${ sexe == 'M' }"><c:out value="né"></c:out></c:if>
    				<c:if test="${ sexe == 'R' }"><c:out value="née"></c:out></c:if> le ${ date_naissance } à ${ lieu_naissance } 
    				<c:if test="${ cachet_medecin == 'Oui' }"><c:out value="a effectué la visite médicale "></c:out></c:if>
    				<c:if test="${ apte == 'Oui' }"><c:out value="et est apte"></c:out></c:if>
    				<c:if test="${ apte == 'Non' }"><c:out value="mais est inapte"></c:out></c:if>
    			 </p>
    		</div>
		</div>
		
		<div class="<c:if test="${ cachet_medecin == 'Non' }"><c:out value="alert_medecin alert-danger"></c:out></c:if>" style='display:<c:if test="${ cachet_medecin == 'Oui' }"><c:out value="none"></c:out></c:if> <c:if test="${ empty cachet_medecin }"><c:out value="none"></c:out></c:if>;'>
  			<div class="card-body">
    			<p class="card-text"> 
    				${ prenom1 } ${ prenom2 } ${ prenom3 } ${ nom } <c:if test="${ sexe == 'M' }"><c:out value="né"></c:out></c:if>
    				<c:if test="${ sexe == 'F' }"><c:out value="née"></c:out></c:if> le ${ date_naissance } à ${ lieu_naissance }
    				<c:if test="${ cachet_medecin == 'Non' }"><c:out value="n'a pas encore fait la visite médicale"></c:out></c:if>
    			</p>
    		</div> 
		</div>
		
		<div class="<c:if test="${ cachet_agent_comptable == 'Oui' }"><c:out value="alert_comptable alert-success"></c:out></c:if>" style='display:<c:if test="${ cachet_agent_comptable == 'Non' }"><c:out value="none"></c:out></c:if> <c:if test="${ empty cachet_agent_comptable }"><c:out value="none"></c:out></c:if>;' >
  			<div class="card-body">
    			<p class="card-text"> <c:if test="${ sexe == 'M' }"><c:out value="Mr"></c:out></c:if> 
    				<c:if test="${ sexe == 'F' }"><c:out value="Mme"></c:out></c:if> ${ nom } 
    				<c:if test="${ cachet_agent_comptable == 'Oui' }"><c:out value="a payé les frais d'inscription d'un montant de "></c:out></c:if>
    				${ montant } FCFA
    			 </p>
    		</div>
		</div>
		
		<div class="<c:if test="${ cachet_agent_comptable == 'Non' }"><c:out value="alert_comptable alert-danger"></c:out></c:if>" style='display:<c:if test="${ cachet_agent_comptable == 'Oui' }"><c:out value="none"></c:out></c:if> <c:if test="${ empty cachet_agent_comptable }"><c:out value="none"></c:out></c:if>;' >
  			<div class="card-body">
    			<p class="card-text"> <c:if test="${ sexe == 'M' }"><c:out value="Mr"></c:out></c:if> 
    				<c:if test="${ sexe == 'F' }"><c:out value="Mme"></c:out></c:if> ${ nom } 
    				<c:if test="${ cachet_agent_comptable == 'Non' }"><c:out value="n'a pas encore payé les frais d'inscription "></c:out></c:if> 
    			</p>
    		</div>
		</div> 
		
		<a href="certificat_inscription"><button class="delivrer" style='display:<c:if test="${ empty cachet_medecin }"><c:out value="none"></c:out></c:if> ;'>Delivrer le certificat d'inscription</button></a>
		
		<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>



