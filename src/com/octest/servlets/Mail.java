package com.octest.servlets;

import java.io.IOException;
import java.util.Properties;
import java.util.Date;

import javax.mail.*;

import javax.mail.internet.*;

import com.sun.mail.smtp.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mail
 */
@WebServlet("/Mail")
public class Mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Properties props = System.getProperties();
	        props.put("mail.smtps.host","smtp.gmail.com");
	        props.put("mail.smtps.auth","true");
	        Session session = Session.getInstance(props, null);
	        Message msg = new MimeMessage(session);
	        try {
				msg.setFrom(new InternetAddress("cheikh.cof@gmail.com"));
			} catch (MessagingException e) {
				e.printStackTrace();
			};
	        try {
				msg.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("tov.are.jacobsen@iss.no", false));
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	        try {
				msg.setSubject("Test "+System.currentTimeMillis());
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	        try {
				msg.setText("Test du javamail");
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	        try {
				msg.setHeader("X-Mailer", "Header du mail");
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	        try {
				msg.setSentDate(new Date());
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	        SMTPTransport t = null;
			try {
				t = (SMTPTransport)session.getTransport("smtps");
			} catch (NoSuchProviderException e) {
				e.printStackTrace();
			}
	        try {
				t.connect("smtp.gmail.com", "oumarba785@gmail.com", "al,cheikh,ou,");
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	        try {
				t.sendMessage(msg, msg.getAllRecipients());
			} catch (MessagingException e1) {
				e1.printStackTrace();
			}
	        System.out.println("Response: " + t.getLastServerResponse());
	        try {
				t.close();
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
