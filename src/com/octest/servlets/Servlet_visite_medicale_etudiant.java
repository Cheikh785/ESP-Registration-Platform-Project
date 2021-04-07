package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.octest.beans.ValiderVisiteMedicale;

@WebServlet("/Servlet_visite_medicale_etudiant")
public class Servlet_visite_medicale_etudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Servlet_visite_medicale_etudiant() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/consultation_etudiant.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ValiderVisiteMedicale valider = new ValiderVisiteMedicale();
		valider.validerVisiteMedicale(request);
//		HttpSession session = request.getSession();
//		session.removeAttribute("prenom1");
		this.getServletContext().getRequestDispatcher("/WEB-INF/consultation_etudiant.jsp").forward(request, response);
	}

}
