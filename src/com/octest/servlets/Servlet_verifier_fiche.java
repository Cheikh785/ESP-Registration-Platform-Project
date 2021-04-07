package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.beans.VerifierLoginEtudiant;


@WebServlet("/Servlet_verifier_fiche")
public class Servlet_verifier_fiche extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Servlet_verifier_fiche() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/verifier_validite_fiche.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifierLoginEtudiant verify = new VerifierLoginEtudiant();
		try {
			verify.verifierLoginEtudiant(request);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
			
		try {
			request.setAttribute("valid", verify.verifierLoginEtudiant(request).getValid());
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			if(verify.verifierLoginEtudiant(request).getValid()) {
				request.setAttribute("prenom1", verify.verifierLoginEtudiant(request).getPrenom1());
				request.setAttribute("prenom2", verify.verifierLoginEtudiant(request).getPrenom2());
				request.setAttribute("prenom3", verify.verifierLoginEtudiant(request).getPrenom3());
				request.setAttribute("nom", verify.verifierLoginEtudiant(request).getNom());
				request.setAttribute("login", verify.verifierLoginEtudiant(request).getLogin());
				request.setAttribute("sexe", verify.verifierLoginEtudiant(request).getSexe());
				request.setAttribute("date_naissance", verify.verifierLoginEtudiant(request).getDate_naissance());
				request.setAttribute("lieu_naissance", verify.verifierLoginEtudiant(request).getLieu_naissance());
				request.setAttribute("cachet_medecin", verify.verifierLoginEtudiant(request).getCachet_medecin());
				request.setAttribute("cachet_agent_comptable", verify.verifierLoginEtudiant(request).getCachet_agent_comptable());
				request.setAttribute("montant", verify.verifierLoginEtudiant(request).getMontant());
				request.setAttribute("apte", verify.verifierLoginEtudiant(request).getApte());
				
				HttpSession session = request.getSession();
				
				session.setAttribute("login_certificat", verify.verifierLoginEtudiant(request).getLogin());
				session.setAttribute("prenom1_certificat", verify.verifierLoginEtudiant(request).getPrenom1());
				session.setAttribute("prenom2_certificat", verify.verifierLoginEtudiant(request).getPrenom2());
				session.setAttribute("prenom3_certificat", verify.verifierLoginEtudiant(request).getPrenom3());
				session.setAttribute("nom_certificat", verify.verifierLoginEtudiant(request).getNom());
				session.setAttribute("sexe_certificat", verify.verifierLoginEtudiant(request).getSexe());
				session.setAttribute("date_naissance_certificat", verify.verifierLoginEtudiant(request).getDate_naissance());
				session.setAttribute("lieu_naissance_certificat", verify.verifierLoginEtudiant(request).getLieu_naissance());
				session.setAttribute("annee_etude_certificat", verify.verifierLoginEtudiant(request).getAnnee_etude());
				session.setAttribute("cycle_certificat", verify.verifierLoginEtudiant(request).getCycle());
				session.setAttribute("departement_certificat", verify.verifierLoginEtudiant(request).getDepartement());
				session.setAttribute("option_choisie_certificat", verify.verifierLoginEtudiant(request).getOption_choisie());
				session.setAttribute("apte_certificat", verify.verifierLoginEtudiant(request).getApte());
				session.setAttribute("cachet_medecin_certificat", verify.verifierLoginEtudiant(request).getCachet_medecin());
				session.setAttribute("cachet_agent_comptable_certificat", verify.verifierLoginEtudiant(request).getCachet_agent_comptable());
				session.setAttribute("montant_certificat", verify.verifierLoginEtudiant(request).getMontant());
				session.setAttribute("nationalite_certificat", verify.verifierLoginEtudiant(request).getNationalite());

				this.getServletContext().getRequestDispatcher("/WEB-INF/verifier_validite_fiche.jsp").forward(request, response);
			}else {
				this.getServletContext().getRequestDispatcher("/WEB-INF/verifier_validite_fiche.jsp").forward(request, response);
			}
				this.getServletContext().getRequestDispatcher("/WEB-INF/verifier_validite_fiche.jsp").forward(request, response);
		} catch (SQLException | ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
