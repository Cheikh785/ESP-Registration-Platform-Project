package com.octest.beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.octest.dbb.ConnectionBdd;

public class VerifierLoginComptable {
	public Boolean verifierLoginComptable(HttpServletRequest request) throws SQLException{	
		
		Boolean valid = false;
		String prenom_comptable = request.getParameter("prenom_comptable");
		String nom_comptable = request.getParameter("nom_comptable");
		String login_comptable = request.getParameter("login_comptable");
		String password_comptable = request.getParameter("password_comptable");
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "SELECT * FROM comptable;";
		ResultSet resultat = connexion.rechercher(requete);
		
		while(resultat.next()) {
			if((resultat.getString("login")).equals(login_comptable) && (resultat.getString("password")).equals(password_comptable)
					&& (resultat.getString("prenom")).equals(prenom_comptable) && (resultat.getString("nom")).equals(nom_comptable)) {
				valid = true;
				HttpSession session = request.getSession();
				
				session.setAttribute("login_comptable", resultat.getString("login"));
				session.setAttribute("prenom_comptable", resultat.getString("prenom"));
				session.setAttribute("nom_comptable", resultat.getString("nom"));
				session.setAttribute("sexe_comptable", resultat.getString("sexe"));
				session.setAttribute("lieu_de_travail_comptable", resultat.getString("lieu_de_travail"));
				break;
			}else {
				valid = false;
			}
		}
		return valid;
		
	}
}
