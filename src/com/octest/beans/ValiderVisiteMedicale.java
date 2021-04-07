package com.octest.beans;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.octest.dbb.ConnectionBdd;

public class ValiderVisiteMedicale {
	public void validerVisiteMedicale(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String login = (String)session.getAttribute("login_medicale_etudiant");
		
		String apte = request.getParameter("apte");
		String temperature = request.getParameter("temperature");
		String poids = request.getParameter("poids");
		String taille = request.getParameter("taille");
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "UPDATE etudiant SET apte='"+apte+"', cachet_medecin='Oui', temperature='"+temperature+"', poids='"+poids+"', taille='"+taille+"' WHERE login='"+login+"';";
		connexion.ajouter(requete);
	}
}
