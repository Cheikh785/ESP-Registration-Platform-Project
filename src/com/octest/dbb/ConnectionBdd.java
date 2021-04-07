package com.octest.dbb;

import java.sql.*;

public class ConnectionBdd {
	Connection connexion = null;
	Statement statement = null;
	ResultSet resultat = null;
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/inscription";
	String login = "root";
	String password = "alcheikhou785";
	public void connectionBdd() {
		try {
			Class.forName(driver);
		}catch(ClassNotFoundException e) {
		}
		
		try {
			connexion = DriverManager.getConnection(url, login, password);
			statement = connexion.createStatement();	
		}catch(SQLException e) {
			System.out.println("Erreur survenue lors de la connexion à la base de donnée");
		}
	}
	
	public ResultSet rechercher(String query) {
		try {
			resultat = statement.executeQuery(query);
		}catch(SQLException ex) {
			System.err.println(ex);
		}
		return resultat;
	}
	
	public void ajouter(String query) {
		try {
			statement.executeUpdate(query);
		}catch(SQLException ex) {
			System.err.println(ex);
		}
	}
	
	public void supprimer(String query) {
		try {
			statement.executeUpdate(query);
		}catch(SQLException ex) {
			System.err.println(ex);
		}		
	}
	
	public void fermer() {
		try {
			resultat.close();
		}catch(SQLException ex) {
			System.out.println("Problème de fermeture de la base de donnée");
		}
	}
}


