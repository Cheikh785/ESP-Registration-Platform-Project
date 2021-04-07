package com.octest.beans;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;

import com.octest.dbb.ConnectionBdd;

public class LoginEtudiant {
	public Utilisateur loginEtudiant(HttpServletRequest request) throws SQLException{
		
		Utilisateur utilisateur = new Utilisateur();	
		
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "SELECT * FROM etudiant;";
		ResultSet resultat = connexion.rechercher(requete);
		
		while(resultat.next()) {
			if((resultat.getString("login")).equals(login) && (resultat.getString("password")).equals(password)) {
				utilisateur.setValid(true);
				utilisateur.setPrenom1(resultat.getString("prenom1"));
				utilisateur.setPrenom2(resultat.getString("prenom2"));
				utilisateur.setPrenom3(resultat.getString("prenom3"));
				utilisateur.setNom(resultat.getString("nom"));
				utilisateur.setLogin(resultat.getString("login"));
				break;
			}else {
				utilisateur.setValid(false);
			}
		}
		return utilisateur;
		
	}
}
