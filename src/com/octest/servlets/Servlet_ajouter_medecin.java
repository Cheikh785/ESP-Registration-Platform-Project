package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.beans.AjouterMedecin;


@WebServlet("/Servlet_ajouter_medecin")
public class Servlet_ajouter_medecin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet_ajouter_medecin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/gestion_scolarite.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AjouterMedecin ajouter = new AjouterMedecin();
		try {
			ajouter.ajouterMedecin(request);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/gestion_scolarite.jsp").forward(request, response);
	}

}
