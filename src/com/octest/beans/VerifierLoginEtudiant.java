package com.octest.beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import com.octest.dbb.ConnectionBdd;

public class VerifierLoginEtudiant {
	Boolean valid;
public Utilisateur verifierLoginEtudiant(HttpServletRequest request) throws SQLException{
		
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
				utilisateur.setSexe(resultat.getString("sexe"));
				utilisateur.setDate_naissance(resultat.getString("date_naissance"));
				utilisateur.setLieu_naissance(resultat.getString("lieu_naissance"));
				utilisateur.setCachet_medecin(resultat.getString("cachet_medecin"));
				utilisateur.setCachet_agent_comptable(resultat.getString("cachet_agent_comptable"));
				utilisateur.setMontant(resultat.getString("montant"));
				utilisateur.setApte(resultat.getString("apte"));
				utilisateur.setAnnee_etude(resultat.getString("annee_etude"));
				utilisateur.setCycle(resultat.getString("cycle"));
				utilisateur.setDepartement(resultat.getString("departement"));
				utilisateur.setOption_choisie(resultat.getString("option_choisie"));	
				utilisateur.setNationalite(resultat.getString("nationalite"));	

				break;
			}else {
				utilisateur.setValid(false);
			}
		}
		return utilisateur;
		
	}
}
