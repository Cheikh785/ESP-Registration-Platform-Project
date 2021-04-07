<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/consultation_etudiant.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" /> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<title>Medical examination</title>
	</head>
	<body>
		<div style= 'background-image: url("<c:url value="/images/medecin6.jpg"/>"); background-repeat: no-repeat; background-size: cover; background-position: center; height: 743px; filter: blur(0px);  '>
		</div>
		<div class="box1">
	    	<h1 id="bienvenue">Bienvenue, Docteur ${sessionScope.nom_medecin } ${sessionScope.prenom_medecin } </h1>
			<p>Dans cette application, vous avez la possiblité de renseigner l'aptitude de l'étudiant que vous consulter en renseignant 
			les informations le conçernant  dans la section etudiant (à droite). Vous rechercher d'abord l'etudiant en renseignant son login, son nom et son prenom, 
			ensuite vous renseigner son poids, sa température et sa taille et enfin cliquer sur le boutton Oui si l'étudiant est apte et sur le boutton Nom au cas contraire.</p>
		</div>
		<div class="box2">
			<h2>IDENTIFIANTS</h2> 
			<form action="medecin_cherche_etudiant" method="post">
				<table>
					<tr>
						<td><label for="prenom1" >Prenom1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
						<td><input type="text" name="prenom1_etudiant" id="prenom1" class="input1"></td>
					</tr>
					<tr>
						<td><label for="prenom2" >Prenom2</label></td>
						<td><input type="text" name="prenom2_etudiant" id="prenom2" class="input1"></td>
					</tr>
					<tr>
						<td><label for="nom">Nom</label></td>
						<td><input type="text" name="nom_etudiant" id="nom" class="input1"></td>
					</tr>
					<tr>
						<td><label for="login" >Login</label></td>
						<td><input type="text" name="login_etudiant" id="login" class="input1"></td>
					</tr>
				</table>
				<input type="submit" value="Rechercher" class="rechercher">			
				<c:if test="${ !empty valid && valid == false }" > <span class="incorect"> <c:out value="Identifiants incorects"> </c:out> </span> </c:if>		
			</form>
		</div>
		<div class="box3">
			<c:if test="${ empty prenom1 }" > <span style='color: red; position: relative; left: 25%; top: 0%; font-style: italic;'> <c:out value="Informations conçernants l'étudiant"> </c:out> </span> </c:if>
			<c:if test="${ !empty prenom1 }" > <c:out value="${prenom1 } ${ prenom2 } ${ prenom3 } ${ nom }, né(e) le ${ date_naissance } à ${ lieu_naissance }. ${ situation_familiale } avec ${ nombre_enfants } enfants."> </c:out> </c:if>
			
			<form action="visite_medicale_etudiant" method="post">
				<label for="temperature">Température&nbsp;</label>
				<input type="text" name="temperature" id="temperature" required <c:if test="${ empty prenom1 }" ><c:out value="disabled"></c:out></c:if>>&nbsp;°C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<label for="poids">Poids&nbsp;</label>
				<input type="text" name="poids" id="poids" required <c:if test="${ empty prenom1 }" ><c:out value="disabled"></c:out></c:if>>&nbsp;KG&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<label for="taille">Taille&nbsp;</label>
				<input type="text" name="taille" id="taille" required <c:if test="${ empty prenom1 }" ><c:out value="disabled"></c:out></c:if>>&nbsp;cm<br><br>
				
				J'ai consulté l'étudiant et je déclare qu'il est :&nbsp;&nbsp;&nbsp;&nbsp;
				<label for="apte"><span style='color: green; font-weight: bold;'>Apte</span></label>
				<input type="radio" name="apte" id="apte" value="Oui" required <c:if test="${ empty prenom1 }" ><c:out value="disabled"></c:out></c:if>>&nbsp;&nbsp;&nbsp;&nbsp;
				<label for="inapte"><span style='color: red; font-weight: bold;'>Inapte</span></label>
				<input type="radio" name="apte" id="inapte" value="Non" required <c:if test="${ empty prenom1 }" ><c:out value="disabled"></c:out></c:if>><br>
				<input type="submit" value="Valider" id="valider" <c:if test="${ empty prenom1 }" ><c:out value="disabled"></c:out></c:if>>
			</form>
		</div>
		<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>



