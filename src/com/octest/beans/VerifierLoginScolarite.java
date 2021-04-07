package com.octest.beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.octest.dbb.ConnectionBdd;

public class VerifierLoginScolarite {
	public Boolean verifierLoginScolarite(HttpServletRequest request) throws SQLException{	
		
		Boolean valid = false;
		String prenom_scolarite = request.getParameter("prenom_scolarite");
		String nom_scolarite = request.getParameter("nom_scolarite");
		String login_scolarite = request.getParameter("login_scolarite");
		String password_scolarite = request.getParameter("password_scolarite");
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "SELECT * FROM scolarite;";
		ResultSet resultat = connexion.rechercher(requete);
		
		while(resultat.next()) {
			if((resultat.getString("login")).equals(login_scolarite) && (resultat.getString("password")).equals(password_scolarite)
					&& (resultat.getString("prenom")).equals(prenom_scolarite) && (resultat.getString("nom")).equals(nom_scolarite)) {
				valid = true;
				HttpSession session = request.getSession();
				
				session.setAttribute("login_scolarite", resultat.getString("login"));
				session.setAttribute("prenom_scolarite", resultat.getString("prenom"));
				session.setAttribute("nom_scolarite", resultat.getString("nom"));
				session.setAttribute("sexe_scolarite", resultat.getString("sexe"));
				break;
			}else {
				valid = false;
			}
		}
		return valid;
		
	}
}
