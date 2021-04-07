package com.octest.beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.octest.dbb.ConnectionBdd;

public class VerifierLoginMedecin {
	public Boolean verifierLoginMedecin(HttpServletRequest request) throws SQLException{	
		
		Boolean valid = false;
		String prenom_doctor = request.getParameter("prenom_doctor");
		String nom_doctor = request.getParameter("nom_doctor");
		String login_doctor = request.getParameter("login_doctor");
		String password_doctor = request.getParameter("password_doctor");
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "SELECT * FROM medecin;";
		ResultSet resultat = connexion.rechercher(requete);
		
		while(resultat.next()) {
			if((resultat.getString("login")).equals(login_doctor) && (resultat.getString("password")).equals(password_doctor)
					&& (resultat.getString("prenom")).equals(prenom_doctor) && (resultat.getString("nom")).equals(nom_doctor)) {
				valid = true;
				HttpSession session = request.getSession();
				
				session.setAttribute("login_medecin", resultat.getString("login"));
				session.setAttribute("prenom_medecin", resultat.getString("prenom"));
				session.setAttribute("nom_medecin", resultat.getString("nom"));
				break;
			}else {
				valid = false;
			}
		}
		return valid;
		
	}
}
