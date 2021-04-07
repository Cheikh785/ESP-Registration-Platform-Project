package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.beans.VerifierLoginComptable;

 
@WebServlet("/Servlet_inscription_comptable")
public class Servlet_inscription_comptable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Servlet_inscription_comptable() {
        super();
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/inscription_comptable.jsp").forward(request, response);
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifierLoginComptable verify = new VerifierLoginComptable();
		try {
			if(verify.verifierLoginComptable(request)) {
				this.getServletContext().getRequestDispatcher("/WEB-INF/paiement_etudiant.jsp").forward(request, response);
			}else {
				request.setAttribute("valid", verify.verifierLoginComptable(request));
				this.getServletContext().getRequestDispatcher("/WEB-INF/inscription_comptable.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
