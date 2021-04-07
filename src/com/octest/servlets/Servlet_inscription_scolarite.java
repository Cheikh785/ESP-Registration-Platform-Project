package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.beans.VerifierLoginScolarite;


@WebServlet("/Servlet_inscription_scolarite")
public class Servlet_inscription_scolarite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Servlet_inscription_scolarite() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/inscription_scolarite.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifierLoginScolarite verify = new VerifierLoginScolarite();
		try {
			if(verify.verifierLoginScolarite(request)) {
				this.getServletContext().getRequestDispatcher("/WEB-INF/gestion_scolarite.jsp").forward(request, response);
			}else {
				request.setAttribute("valid", verify.verifierLoginScolarite(request));
				this.getServletContext().getRequestDispatcher("/WEB-INF/inscription_scolarite.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
