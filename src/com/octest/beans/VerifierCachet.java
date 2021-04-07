package com.octest.beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.octest.dbb.ConnectionBdd;

public class VerifierCachet {
	public Boolean result = false;
	public Boolean verifierCachet(HttpServletRequest request, String name) throws SQLException {
		HttpSession session = request.getSession();
		String login = (String)session.getAttribute("login");
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "SELECT * FROM etudiant WHERE login = '"+ login +"';";
		ResultSet resultat = connexion.rechercher(requete);
		
		while(resultat.next()) {
			if(resultat.getString("login").equals(login) && resultat.getString(name).equals("Oui")) {
				result = true;
				break;
			}else {
				result = false;
			}
		}
		return result;
	}
}
