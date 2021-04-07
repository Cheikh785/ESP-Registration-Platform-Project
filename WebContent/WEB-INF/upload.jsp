<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/upload.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize/css/materialize.min.css"/>" /> 
		<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>" /> 
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/css/bootstrap-4.4.1-dist/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/css/materialize/js/materialize.min.js"/>"></script>
		<title>File Upload</title>
	</head>
	<body>
		<div style= 'background-image: url("<c:url value="/images/esp5.jpg"/>"); background-repeat: no-repeat; background-size: cover; background-position: center; height: 739px;;   '></div>
    	<div class="box">
	    	<h1 id="bienvenue">Bienvenue</h1>
			<p>Veuillez nous envoyer à travers le boutton ci-dessous votre attestation de BAC et votre extrait de naissance scannés ainsi que 2 photos d'identités pour qu'on puisse 
			commencer la procédure de validation de votre dossier.<br><br>N'oubliez pas de vérifier la validité des documents et de les scanner au préalable avec le bon format 
			avant de les selectionner tous en même temps. <br><br> </p>
	    	<form  id="form" action="upload" method="post" enctype="multipart/form-data" >
		    	<div class="file-field input-field">
					<div class="btn" id="parcourir">
						<span>Parcourir</span>
						<input type="file" name="file" multiple>
					</div>
					<div class="file-path-wrapper">
						<input type="text" class="file-path" id="text-parcourir">
					</div>
				</div><br>
					<input class="btn btn-primary" id="envoyer" type="submit" value="Envoyer" />
			</form>  
		</div>
		<span id="heart">Create with <i class="fa fa-heart" style="font-size:20px;color:red"></i> by COF</span>
	</body>
</html>



