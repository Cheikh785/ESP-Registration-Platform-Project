package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.beans.EnregistrerFicheEtudiant;
import com.octest.beans.VerifierCachet;


@WebServlet("/Servlet_fiche_etudiant")
public class Servlet_fiche_etudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Servlet_fiche_etudiant() {
        super();
    }
    VerifierCachet verify = new VerifierCachet();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		try {
			String apte = "apte";
			verify.verifierCachet(request, apte);
			request.setAttribute("apte", verify.verifierCachet(request, "apte"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
			try {
				String payer = "payer";
				verify.verifierCachet(request, payer);
				request.setAttribute("paye", verify.verifierCachet(request, "payer"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		try {
			verify.verifierCachet(request, "cachet_medecin");
			request.setAttribute("cachet_medecin", verify.verifierCachet(request, "cachet_medecin"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			verify.verifierCachet(request, "cachet_agent_comptable");
			request.setAttribute("cachet_agent_comptable", verify.verifierCachet(request, "cachet_agent_comptable"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/fiche_inscription.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EnregistrerFicheEtudiant enregistrer = new EnregistrerFicheEtudiant();
		enregistrer.enregistrerFiche(request);
		request.getRequestDispatcher("/WEB-INF/finale.jsp").forward(request, response);
	}

}
