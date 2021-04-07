package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.beans.VerifierLoginMedecin;

@WebServlet("/Servlet_inscription_medecin")
public class Servlet_inscription_medecin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Servlet_inscription_medecin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/inscription_medecin.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifierLoginMedecin verify = new VerifierLoginMedecin();
		try {
			if(verify.verifierLoginMedecin(request)) {
				this.getServletContext().getRequestDispatcher("/WEB-INF/consultation_etudiant.jsp").forward(request, response);
			}else {
				request.setAttribute("valid", verify.verifierLoginMedecin(request));
				this.getServletContext().getRequestDispatcher("/WEB-INF/inscription_medecin.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
