package com.octest.beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import com.octest.dbb.ConnectionBdd;

public class ChercherEtudiant {
	public Utilisateur chercherEtudiant(HttpServletRequest request) throws SQLException{	
		
		String prenom1_etudiant = request.getParameter("prenom1_etudiant");
		String nom_etudiant = request.getParameter("nom_etudiant");
		String login_etudiant = request.getParameter("login_etudiant");
		
		Utilisateur utilisateur = new Utilisateur();
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "SELECT * FROM etudiant;";
		ResultSet resultat = connexion.rechercher(requete);
		
		while(resultat.next()) {
			if((resultat.getString("login")).equals(login_etudiant) && (resultat.getString("prenom1")).equals(prenom1_etudiant)
					&& (resultat.getString("nom")).equals(nom_etudiant)) {
				utilisateur.setValid(true);
				utilisateur.setLogin(resultat.getString("login"));
				utilisateur.setPrenom1(resultat.getString("prenom1"));
				utilisateur.setPrenom2(resultat.getString("prenom2"));
				utilisateur.setPrenom3(resultat.getString("prenom3"));
				utilisateur.setNom(resultat.getString("nom"));
				utilisateur.setSexe(resultat.getString("sexe"));
				utilisateur.setDate_naissance(resultat.getString("date_naissance"));
				utilisateur.setLieu_naissance(resultat.getString("lieu_naissance"));
				utilisateur.setSituation_familiale(resultat.getString("situation_familiale"));
				utilisateur.setNombre_enfants(resultat.getString("nombre_enfants"));
				break;
			}else {
				utilisateur.setValid(false);
			}
		}
		return utilisateur;
		
	}
}
