package com.octest.beans;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.octest.dbb.ConnectionBdd;

public class EnregistrerFicheEtudiant {
	public void enregistrerFiche(HttpServletRequest request) {
		
		String carte_identite = request.getParameter("carte_identite");
		String nom = request.getParameter("nom");
        String nom_mari = request.getParameter("nom_mari");
		String prenom1 = request.getParameter("prenom1");
		String prenom2 = request.getParameter("prenom2");
		String date_naissance = request.getParameter("date_naissance");
		String sexe = request.getParameter("sexe");
		String prenom3 = request.getParameter("prenom3");
		String lieu_naissance = request.getParameter("lieu_naissance");
		String region_naissance = request.getParameter("region_naissance");
		String pays_naissance = request.getParameter("pays_naissance");
		String nationlite = request.getParameter("nationalite");
		
		String adresse_a_dakar = request.getParameter("adresse_dakar");
		String boite_postale = request.getParameter("boite_postale");
		String portable = request.getParameter("portable");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		
		String activite_salarie = request.getParameter("activite_salarie");
		String categorie_socioprofessionelle = request.getParameter("categorie_socioprofessionelle");
		String status_etudiant = request.getParameter("status_etudiant");
		
		String situation_familiale = request.getParameter("situation_familiale");
		String nombre_enfants = request.getParameter("nombre_enfants");
		
		String annee_etude = request.getParameter("annee_etude");
		String departement = request.getParameter("departement");
		String cycle = request.getParameter("cycle");
		String option = request.getParameter("option");
		String nombre_inscription = request.getParameter("nombre_inscription");
		String redoubler = request.getParameter("redoubler");
		String horaire = request.getParameter("horaire");
		
		String bourse = request.getParameter("bourse");
		String nature_bourse = request.getParameter("nature_bourse");
		String exonere_à = request.getParameter("exonere_a");
		String montant_bourse = request.getParameter("montant_bourse");
		String organisme_boursier = request.getParameter("organisme_boursier");
		
		String serie_bac = request.getParameter("diplome_bac");
		String annee_bac = request.getParameter("annee_bac");
		String mention_bac = request.getParameter("mention_bac");
		String lieu_bac = request.getParameter("lieu_bac");
		String serie_dut = request.getParameter("diplome_dut");
		String annee_dut = request.getParameter("annee_dut");
		String mention_dut = request.getParameter("mention_dut");
		String lieu_dut = request.getParameter("lieu_dut");
		String serie_license = request.getParameter("diplome_license");
		String annee_license = request.getParameter("annee_license");
		String mention_license = request.getParameter("mention_license");
		String lieu_license = request.getParameter("lieu_license");
		String serie_master = request.getParameter("diplome_master");
		String annee_master = request.getParameter("annee_master");
		String mention_master = request.getParameter("mention_master");
		String lieu_master = request.getParameter("lieu_master");
		String serie_doctorat = request.getParameter("diplome_doctorat");
		String annee_doctorat = request.getParameter("annee_doctorat");
		String mention_doctorat = request.getParameter("mention_doctorat");
		String lieu_doctorat = request.getParameter("lieu_doctorat");
		
		String nom_contact = request.getParameter("nom_contact");
		String prenom1_contact = request.getParameter("prenom1_contact");
		String nom_mari_contact = request.getParameter("nom_mari_contact");
		String prenom2_contact = request.getParameter("prenom2_contact");
		String lien_parente = request.getParameter("lien_parente");
		String prenom3_contact = request.getParameter("prenom3_contact");
        String ville_contact = request.getParameter("ville_contact");
		String quartier_contact = request.getParameter("quartier_contact");
		String boite_postale_contact = request.getParameter("boite_postale_contact");
		String telephone_contact = request.getParameter("telephone_contact");
		String portable_contact = request.getParameter("portable_contact");
		String fax_contact = request.getParameter("fax_contact");
		String email_contact = request.getParameter("email_contact");
		String responsable_etudiant = request.getParameter("responsable_etudiant");
		String personne_à_contacter = request.getParameter("personne_a_contacter");
		
		
		String à_dakar_le = request.getParameter("a_dakar_le");
		String signature = request.getParameter("signature");
		
		
		
		HttpSession session = request.getSession();
		String login = (String)session.getAttribute("login");
		ConnectionBdd connexion = new ConnectionBdd();
		connexion.connectionBdd();
		String requete = " UPDATE etudiant SET carte_identite='"+carte_identite+"', prenom1='"+prenom1+"', prenom2='"+prenom2+"',  "
				+ "prenom3='"+prenom3+"', nom='"+nom+"',sexe='"+sexe+"',"
				+ "nom_mari='"+nom_mari+"', date_naissance='"+date_naissance+"', lieu_naissance='"+lieu_naissance+"',"
				+ "region_naissance='"+region_naissance+"', pays_naissance='"+pays_naissance+"', nationalite='"+nationlite+"',"
				+ "adresse_a_dakar='"+adresse_a_dakar+"', boite_postale='"+boite_postale+"', telephone='"+telephone+"',"
				+ "portable='"+portable+"', email='"+email+"', activite_salarie='"+activite_salarie+"',"
				+ "statut='"+status_etudiant+"', categorie_socioprofessionnelle='"+categorie_socioprofessionelle+"', situation_familiale='"+situation_familiale+"',"
				+ "nombre_enfants='"+nombre_enfants+"', annee_etude='"+annee_etude+"', cycle='"+cycle+"',"
				+ "departement='"+departement+"', option_choisie='"+option+"', nb_inscription_anterieures='"+nombre_inscription+"',"
				+ "redoubler='"+redoubler+"', horaires_td='"+horaire+"', bourse='"+bourse+"',"
				+ "nature_bourse='"+nature_bourse+"', exonere='"+exonere_à+"', montant_bourse='"+montant_bourse+"',"
				+ "organisme='"+organisme_boursier+"', serie_bac='"+serie_bac+"', annee_bac='"+annee_bac+"',"
				+ "mention_bac='"+mention_bac+"', lieu_bac='"+lieu_bac+"', serie_dut='"+serie_dut+"',"
				+ "annee_dut='"+annee_dut+"', mention_dut='"+mention_dut+"', lieu_dut='"+lieu_dut+"',"
				+ "serie_license='"+serie_license+"', annee_license='"+annee_license+"', mention_license='"+mention_license+"',"
				+ "lieu_license='"+lieu_license+"', serie_master='"+serie_master+"', annee_master='"+annee_master+"',"
				+ "mention_master='"+mention_master+"', lieu_master='"+lieu_master+"', serie_doctorat='"+serie_doctorat+"',"
				+ "annee_doctorat='"+annee_doctorat+"', mention_doctorat='"+mention_doctorat+"', lieu_doctorat='"+lieu_doctorat+"',"
				+ "prenom1_contact='"+prenom1_contact+"', prenom2_contact='"+prenom2_contact+"', prenom3_contact='"+prenom3_contact+"',"
				+ "nom_contact='"+nom_contact+"', nom_mari_contact='"+nom_mari_contact+"', lien_parente_contact='"+lien_parente+"',"
				+ "quartier_contact='"+quartier_contact+"', ville_contact='"+ville_contact+"', boite_postale_contact='"+boite_postale_contact+"',"
				+ " telephone_contact='"+telephone_contact+"',"
				+ "portable_contact='"+portable_contact+"', fax_contact='"+fax_contact+"', email_contact='"+email_contact+"',"
				+ "responsable_etudiant='"+responsable_etudiant+"', personne_a_contacter='"+personne_à_contacter+"' ,"
				+ "signature='"+signature+"', a_dakar_le='"+à_dakar_le+"' WHERE login='"+login+"'; ";
		
		
		connexion.ajouter(requete);
	}
}






//UPDATE etudiant SET carte_identite='' , prenom1='' , prenom2=' ',  
//		prenom3=' ', nom=' ',sexe=' ',
//		nom_mari=' ', date_naissance=' ', lieu_naissance=' ',
//		region_naissance=' ', pays_naissance=' ', nationalite=' ',
//		adresse_a_dakar=' ', boite_postale=' ', telephone=' ',
//		portable=' ', email=' ', activite_salarie=' ',
//		statut=' ', categorie_socioprofessionnelle=' ', situation_familiale=' ',
//		nombre_enfants=' ', annee_etude=' ', cycle=' ',
//		departement=' ', option_choisie=' ', nb_inscription_anterieures=' ',
//		redoubler=' ', horaires_td=' ', bourse=' ',
//		nature_bourse=' ', exonere=' ', montant_bourse=' ',
//		organisme=' ', serie_bac=' ', annee_bac=' ',
//		mention_bac=' ', lieu_bac=' ', serie_dut=' ',
//		annee_dut=' ', mention_dut=' ', lieu_dut=' ',
//		serie_license=' ', annee_license=' ', mention_license=' ',
//		lieu_license=' ', serie_master=' ', annee_master=' ',
//		mention_master=' ', lieu_master=' ', serie_doctorat=' ',
//		annee_doctorat=' ', mention_doctorat=' ', lieu_doctorat=' ',
//		prenom1_contact=' ', prenom2_contact=' ', prenom3_contact=' ',
//		nom_contact=' ', nom_mari_contact=' ', lien_parente_contact=' ',
//		quartier_contact=' ', ville_contact=' ', boite_postale_contact=' ',
//		 telephone_contact=' ',
//		portable_contact=' ', fax_contact=' ', email_contact=' ',
//		responsable_etudiant=' ', personne_a_contacter=' ' ,
//		signature=' ', a_dakar_le=' ' WHERE id=1; 















