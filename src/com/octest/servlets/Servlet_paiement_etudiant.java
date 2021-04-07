package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.beans.ValiderPaiementEtudiant;


@WebServlet("/Servlet_paiement_etudiant")
public class Servlet_paiement_etudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Servlet_paiement_etudiant() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/paiement_etudiant.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ValiderPaiementEtudiant valider = new ValiderPaiementEtudiant();
		valider.validerPaiementEtudiant(request);
		
		Boolean valid_paye = valider.validerPaiementEtudiant(request);
		HttpSession session = request.getSession();
		session.setAttribute("valid_paye", valid_paye);
		this.getServletContext().getRequestDispatcher("/WEB-INF/paiement_etudiant.jsp").forward(request, response);
		session.removeAttribute("valid_paye");
	}

}
