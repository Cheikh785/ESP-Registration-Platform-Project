package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.octest.beans.LoginEtudiant;

@WebServlet("/Servlet_projet")
public class Servlet_projet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet_projet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginEtudiant verify = new LoginEtudiant();
		try {
			verify.loginEtudiant(request);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
			
		try {
			request.setAttribute("valid", verify.loginEtudiant(request).getValid());
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		try {
			if(verify.loginEtudiant(request).getValid()) {				
				try {
					request.setAttribute("prenom1", verify.loginEtudiant(request).getPrenom1());
					request.setAttribute("prenom2", verify.loginEtudiant(request).getPrenom2());
					request.setAttribute("nom", verify.loginEtudiant(request).getNom());
					request.setAttribute("login", verify.loginEtudiant(request).getLogin());
					
					HttpSession session = request.getSession();
					
					session.setAttribute("login", verify.loginEtudiant(request).getLogin());
					session.setAttribute("prenom1", verify.loginEtudiant(request).getPrenom1());
					session.setAttribute("prenom2", verify.loginEtudiant(request).getPrenom2());
					session.setAttribute("prenom3", verify.loginEtudiant(request).getPrenom3());
					session.setAttribute("nom", verify.loginEtudiant(request).getNom());
					
					this.getServletContext().getRequestDispatcher("/WEB-INF/upload.jsp").forward(request, response);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}else {
				this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);
			}
		} catch (SQLException | ServletException | IOException e) {
			e.printStackTrace();
		}
	}
}















