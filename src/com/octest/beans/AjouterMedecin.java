package com.octest.beans;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.octest.dbb.ConnectionBdd;

public class AjouterMedecin {
	public void ajouterMedecin(HttpServletRequest request) throws SQLException{	
		
		String prenom = request.getParameter("prenom");
		String nom = request.getParameter("nom");
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String portable = request.getParameter("portable");
		String email = request.getParameter("email");
		String sexe = request.getParameter("sexe");
		String lieu_de_travail = request.getParameter("lieu_de_travail");
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "INSERT INTO medecin(login, password, prenom, nom, portable, email, sexe, lieu_de_travail) VALUES('"+login+"', '"+password+"', '"+prenom+"', '"+nom+"', '"+portable+"', '"+email+"', '"+sexe+"', '"+lieu_de_travail+"')";
		
		connexion.ajouter(requete);	
	}
}
