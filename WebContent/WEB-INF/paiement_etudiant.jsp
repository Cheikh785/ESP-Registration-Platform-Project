<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/paiement_etudiant.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" /> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/jquery-3.5.0.js"/>"></script>
		<script>
			
		</script>
		<title>Student's payment</title>
	</head>
	<body>
		<div style= 'background-image: url("<c:url value="/images/comptable3.jpeg"/>"); background-repeat: no-repeat; background-size: cover; background-position: center; height: 739px; width: 1520px; '>
		</div>
		<div class="box1">
	    	<h1 id="bienvenue">Bienvenue <c:if test="${ sessionScope.sexe_comptable == 'M' }" > <c:out value="Mr."> </c:out> </c:if>   <c:if test="${ sessionScope.sexe_comptable == 'F' }" > <c:out value="Mme."> </c:out> </c:if> 
	    	${sessionScope.nom_comptable }</h1>
			<p>Dans cette application, vous avez la possiblité de gérer le paiement des étudiant en ligne et de faire apparaître leur état de paiement directement dans leur fiche d'inscription.
			Pour ce faire, vous renseignez d'abord le prenom, le nom, le login de l'étudiant dans cette section à droite (identifiants). Les informations de l'étudiant s'affiche pour être sûr que 
			les identifiants sont valides et vous cliquez sur le boutton Payé après avoir encaissé l'argent.</p>
		</div>
		
		<div class="box2" style="display:<c:if test="${ valid_etudiant == true }"><c:out value="none"></c:out></c:if>;">
			<h2>IDENTIFIANTS </h2> 
			<form action="comptable_cherche_etudiant" method="post">
				<table>
					<tr>
						<td><label for="prenom" >Prenom(s)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
						<td><input type="text" name="prenom1_etudiant" id="prenom1" class="input1"></td>
					</tr>
					<tr>
						<td><label for="nom">Nom</label></td>
						<td><input type="text" name="nom_etudiant" id="nom" class="input1"></td>
					</tr>
					<tr>
						<td><label for="login" >Login</label> <br></td>
						<td><input type="text" name="login_etudiant" id="login" class="input1"> <br></td>
					</tr>
				</table><br>
				<input type="submit" value="Rechercher" class="rechercher">		
				<c:if test="${ !empty valid && valid == false }" > <span class="incorect"> <c:out value="Identifiants incorects"> </c:out> </span> </c:if>		
			</form>
		</div>
		
		<div class="box3" style="display:<c:if test="${ empty valid_etudiant }"><c:out value="none"></c:out></c:if> <c:if test="${ valid_etudiant == false }"><c:out value="none"></c:out></c:if>;">
			<span style='color: #fff;'>${prenom1 } ${ prenom2 } ${ prenom3 } ${ nom }, né(e) le ${ date_naissance } à ${ lieu_naissance }. ${ valid }</span>
			
			<form action="paiement_etudiant" method="post">
				<span style='color: #fff;'><label for="montant">Montant</label></span>
				<input type="text" name="montant" id="montant" required>&nbsp;&nbsp;&nbsp;<span style='color: #fff;'>FCFA</span>	<br>
						
				J'atteste que <c:if test="${ sexe == 'M' }"><c:out value="Mr."></c:out></c:if>
				<c:if test="${ sexe == 'F' }"><c:out value="Mme."></c:out></c:if> ${ nom }	 
				a payé l'intégralité de ses frais d'inscription au niveau de l'agence comptable 
				de  : ${ sessionScope.lieu_de_travail_comptable } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<label for="paye"><span style='color: green; font-weight: bold;'>Payé</span>&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<input type="checkbox" name="paye" id="paye" value="Oui" required>&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<input type="submit" value="valider" id="valider">
			</form>
		</div>
		<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>





