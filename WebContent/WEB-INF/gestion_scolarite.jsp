<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/gestion_scolarite.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" />
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize/css/materialize.min.css"/>" /> 
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<title>Student's management</title>
	</head>
	<body>
		<div style= 'background-image: url("<c:url value="/images/esp7.jpg"/>"); background-repeat: repeat; background-size: cover; background-position: center; position: fixed;  min-width: 100%;min-height: 100%;'>
		</div>
		<div class="box1">
	    	<h1 id="bienvenue">Bienvenue <c:if test="${ sessionScope.sexe_scolarite == 'M' }" > <c:out value="Mr."> </c:out> </c:if>   <c:if test="${ sessionScope.sexe_scolarite == 'F' }" > <c:out value="Mme."> </c:out> </c:if>
	    	 ${sessionScope.nom_scolarite }</h1>
			<p>Dans cette application, Vous pouvez enregistrer dans la base de donnée le login et le mot de passe des nouveaux bacheliers qui viennent
			de réussir le concours d'entré à l'ESP et initialiser en même temps ces informations dans celle ci.<br>
			Une fois la fiche d'inscription de l'étudiant remplie et la visite médicale et le paiement des frais de scolarité effectués, 
			vous pouvez verifier la valider de ces informations et la conformité de la fiche d'inscription afin de lui délivrer son 
			certificat d'inscription.<br>
			Vous pouvez aussi ajouter de nouveaux medecins, agents comptable ou même agents de scolarité à la base de données au cas il y en aurait. Vous pouvez aussi 
			modifier certains de leurs informations ou les supprimer de la base de donnée. </p>
		</div>
		
		<div class="box2">
			<form action="#" method="post">
				<input type="submit" value="Envoie de mails aux étudiants" class="envoie" disabled>				
			</form>
		</div>
		
		<div class="box3">		
			<h6>Enregistrer etudiant</h6>	
			<form action="ajouter_etudiant" method="post">
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
				<input class="btn btn-primary" id="valider_etudiant" type="submit" value="Valider" />				
			</form>
		</div>
		
		<div class="box4">
			<form action="verifier_fiche" method="post">
				<input type="submit" class="certificat" value="Délivrer certificat d'inscription" >
			</form>
		</div>
		
		<div class="box5">		
			<h6>Ajouter un medecin</h6>	
			<form action="ajouter_medecin" method="post">
			<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="input_medecin1" id="login_medecin1">Prenom(s)</label>
					<input type="text" id="input_medecin1" name="prenom" required><br>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="input_medecin2" id="login_medecin2">Nom</label>
					<input type="text" id="input_medecin2" name="nom" required><br>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">person</i>
					<label for="input_medecin3" id="login_medecin3">Login</label>
					<input type="text" id="input_medecin3" name="login" required><br>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">lock</i>
					<label for="input_medecin4" id="login_medecin4">Password</label>
					<input type="password" id="input_medecin4" name="password" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">phone</i>
					<label for="input_medecin5" id="login_medecin5">Portable</label>
					<input type="text" id="input_medecin5" name="portable" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">mail</i>
					<label for="input_medecin6" id="login_medecin6">Email</label>
					<input type="email" id="input_medecin6" name="email" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">account_box</i>
					<label for="input_medecin7" id="login_medecin7">Sexe</label>
					<input type="text" id="input_medecin7" name="sexe" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">location_on</i>
					<label for="input_medecin8" id="login_medecin8">Lieu de travail</label>
					<input type="text" id="input_medecin8" name="lieu_de_travail" required>
				</div>
				<input class="btn btn-primary" id="valider_medecin" type="submit" value="Valider" />				
			</form>
		</div>
		
		<div class="box6">		
			<h6>Ajouter un agent comptable</h6>	
			<form action="ajouter_comptable" method="post">
			<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="input_comptable1" id="login_comptable1">Prenom(s)</label>
					<input type="text" id="input_comptable1" name="prenom" required><br>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">account_circle</i>
					<label for="input_comptable2" id="login_comptable2">Nom</label>
					<input type="text" id="input_comptable2" name="nom" required><br>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">person</i>
					<label for="input_comptable3" id="login_comptable3">Login</label>
					<input type="text" id="input_comptable3" name="login" required><br>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">lock</i>
					<label for="input_comptable4" id="login_comptable4">Password</label>
					<input type="password" id="input_comptable4" name="password" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">phone</i>
					<label for="input_comptable5" id="login_comptable5">Portable</label>
					<input type="text" id="input_comptable5" name="portable" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">mail</i>
					<label for="input_comptable6" id="login_comptable6">Email</label>
					<input type="email" id="input_comptable6" name="email" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">account_box</i>
					<label for="input_comptable7" id="login_comptable7">Sexe</label>
					<input type="text" id="input_comptable7" name="sexe" required>
				</div>
				<div class="input-field">
					<i class="material-icons prefix">location_on</i>
					<label for="input_comptable8" id="login_comptable8">Lieu de travail</label>
					<input type="text" id="input_comptable8" name="lieu_de_travail" required>
				</div>
				<input class="btn btn-primary" id="valider_comptable" type="submit" value="Valider" />				
			</form>
		</div>
		<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>



