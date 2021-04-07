package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.beans.AjouterEtudiant;


@WebServlet("/Servlet_ajouter_etudiant")
public class Servlet_ajouter_etudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Servlet_ajouter_etudiant() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/gestion_scolarite.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AjouterEtudiant ajouter = new AjouterEtudiant();
		try {
			ajouter.ajouterEtudiant(request);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/gestion_scolarite.jsp").forward(request, response);
	}

}
