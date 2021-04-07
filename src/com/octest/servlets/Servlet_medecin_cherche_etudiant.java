package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.beans.ChercherEtudiant;

/**
 * Servlet implementation class Servlet_medecin_cherche_etudiant
 */
@WebServlet("/Servlet_medecin_cherche_etudiant")
public class Servlet_medecin_cherche_etudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Servlet_medecin_cherche_etudiant() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/consultation_etudiant.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ChercherEtudiant chercher = new ChercherEtudiant();
		try {
			chercher.chercherEtudiant(request);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if(chercher.chercherEtudiant(request).getValid() == true) {
				HttpSession session = request.getSession();
				session.setAttribute("login_medicale_etudiant", chercher.chercherEtudiant(request).getLogin());
				
				request.setAttribute("login", chercher.chercherEtudiant(request).getLogin());
				request.setAttribute("prenom1", chercher.chercherEtudiant(request).getPrenom1());
				request.setAttribute("prenom2", chercher.chercherEtudiant(request).getPrenom2());
				request.setAttribute("prenom3", chercher.chercherEtudiant(request).getPrenom3());
				request.setAttribute("nom", chercher.chercherEtudiant(request).getNom());
				request.setAttribute("date_naissance", chercher.chercherEtudiant(request).getDate_naissance());
				request.setAttribute("lieu_naissance", chercher.chercherEtudiant(request).getLieu_naissance());
				request.setAttribute("situation_familiale", chercher.chercherEtudiant(request).getSituation_familiale());
				request.setAttribute("nombre_enfants", chercher.chercherEtudiant(request).getNombre_enfants());
			}
			this.getServletContext().getRequestDispatcher("/WEB-INF/consultation_etudiant.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
