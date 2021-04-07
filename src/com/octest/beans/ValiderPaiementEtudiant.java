package com.octest.beans;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.octest.dbb.ConnectionBdd;

public class ValiderPaiementEtudiant {
public Boolean validerPaiementEtudiant(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String login = (String)session.getAttribute("login_comptable_etudiant");
		
		String montant = request.getParameter("montant");
		
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = "UPDATE etudiant SET payer='Oui', cachet_agent_comptable='Oui', montant='"+montant+"' WHERE login='"+login+"';";
		connexion.ajouter(requete);
		
		return true;
	}
}
