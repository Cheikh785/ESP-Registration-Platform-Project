<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/certificat_inscription.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" /> 
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<title>Certificat d'inscription</title>
	</head>
	<body class="body">
	    <div class="box">
	    	<img class="ucad" alt="logo de l'ucad" src="<c:url value="/images/ucad1.jpg"/>"> 
	    	<h4 class="universite">UNIVERSITÉ CHEIKH ANTA DIOP DE DAKAR</h4> 
	    	<h5 class="ecole">Ecole Supérieure Polytechnique de Dakar</h5> <br><br>
	    	
	    	<h4 class="certificat">CERTIFICAT D'INSCRIPTION</h4><br>
	    	<p>Le Chef des Services Administratifs soussigné, certifie que <br>
	    	<c:if test="${ !empty sessionScope.sexe_certificat && sessionScope.sexe_certificat == 'M' }"><c:out value="Monsieur"></c:out></c:if>
	    	<c:if test="${ !empty sessionScope.sexe_certificat && sessionScope.sexe_certificat == 'F' }"><c:out value="Madame"></c:out></c:if>
	    	<c:if test="${ !empty sessionScope.prenom1_certificat }"><c:out value="${ sessionScope.prenom1_certificat }"></c:out></c:if>
	    	<c:if test="${ !empty sessionScope.prenom2_certificat }"><c:out value="${ sessionScope.prenom2_certificat }"></c:out></c:if>
	    	<c:if test="${ !empty sessionScope.prenom3_certificat }"><c:out value="${ sessionScope.prenom3_certificat }"></c:out></c:if>
	    	<c:if test="${ !empty sessionScope.nom_certificat }"><c:out value="${ sessionScope.nom_certificat }"></c:out></c:if>
	    	<br>
	    	<c:if test="${ !empty sessionScope.sexe_certificat && sessionScope.sexe_certificat == 'M' }"><c:out value="Né"></c:out></c:if>
	    	<c:if test="${ !empty sessionScope.sexe_certificat && sessionScope.sexe_certificat == 'F' }"><c:out value="Née"></c:out></c:if> le
	    	<c:if test="${ !empty sessionScope.date_naissance_certificat }"><c:out value="${ sessionScope.date_naissance_certificat }"></c:out></c:if> à
	    	<c:if test="${ !empty sessionScope.lieu_naissance_certificat }"><c:out value="${ sessionScope.lieu_naissance_certificat }"></c:out></c:if> 	    	
	    	<br>
	    	Nationnalité <c:if test="${ !empty sessionScope.nationalite_certificat }"><c:out value="${ sessionScope.nationalite_certificat }"></c:out></c:if> 
			<br>
	    	est régulièrement inscrit en <c:if test="${ !empty sessionScope.annee_etude_certificat }"><c:out value="${ sessionScope.annee_etude_certificat }"></c:out></c:if>
			au département <c:if test="${ !empty sessionScope.departement_certificat }"><c:out value="${ sessionScope.departement_certificat }"></c:out></c:if>
			<br><br>
	    	Année universitaire <span class="annee">2018-2019</span>, &nbsp;&nbsp;
	    	identifiant <c:if test="${ !empty sessionScope.login_certificat }"><span class="login"><c:out value="${ sessionScope.login_certificat }"></c:out></span></c:if> 
	    	<br><br>
	    	Dakar, le 17 Avril 2020 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	Le Chef des Serivces Administratifs
	    	<br>
	    	<img class="cachet" alt="Cachet Chef Services Administratifs" src="<c:url value="/images/cachet.jpg"/>"> 
	    	</p>
	    	<p>
	    	<span class="numero">N°075968</span>
	    	<span class="une_fois">"Ce certificat n'est délivré qu'une seule fois"</span>
	    	</p>
	    </div><br>
 		<button class="imprimer">Imprimer</button>
 		<a href="verifier_fiche"><button class="retour">Retour</button></a>
    	
    	<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>



