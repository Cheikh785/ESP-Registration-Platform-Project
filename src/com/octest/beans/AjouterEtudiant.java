package com.octest.beans;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.octest.dbb.ConnectionBdd;

public class AjouterEtudiant {
	public void ajouterEtudiant(HttpServletRequest request) throws SQLException{	
		
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "INSERT INTO etudiant(login, password) "
				+ "VALUES('"+login+"', '"+password+"')";
		
		connexion.ajouter(requete);		
	}
}
